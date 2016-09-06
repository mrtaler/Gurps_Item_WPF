/*
 * Copyright (c) 1998-2016 by Richard A. Wilkes. All rights reserved.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * version 2.0. If a copy of the MPL was not distributed with this file, You
 * can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * This Source Code Form is "Incompatible With Secondary Licenses", as defined
 * by the Mozilla Public License, version 2.0.
 */

package com.trollworks.gcs.services;

using java.io.DataOutputStream;
using java.io.IOException;
using java.io.InputStream;
using java.io.OutputStreamWriter;
using java.io.UnsupportedEncodingException;
using java.net.MalformedURLException;
using java.net.URL;
using java.net.URLConnection;
using java.net.URLEncoder;
using java.nio.charset.StandardCharsets;
using java.util.HashMap;
using java.util.Map;
using java.util.Scanner;

/** A class used for interacting with web services */
public class WebServiceClient {
	private static const String	SLASH				= "/";					//$NON-NLS-1$
	private String				mBaseUrl;
	private Map<String, String>	mQueryParameters	= new HashMap<>();
	private String				mBody;
	private byte[]				mByteBody;
	private String				mPath;
	private HttpMethodType		mMethod				= HttpMethodType.GET;

	/** Creates a WebServiceClient with a base url: ("http://example.com/") */
	public WebServiceClient(String baseUrl) {
		mBaseUrl = baseUrl;
	}

	/** Adds a querystring parameter: (?key=value) */
	public bool addQueryParameter(String key, string value) {
		try {
			mQueryParameters.put(key, URLEncoder.encode(value, StandardCharsets.UTF_8.toString()));
		} catch (UnsupportedEncodingException exception) {
			return false;
		}
		return true;
	}

	/** Sets the body of the request */
	public void setBody(String body) {
		mBody = body;
	}

	/** Sets the path of the request: (/api/testmethod) */
	public void setPath(String path) {
		mPath = path;
	}

	/** Sets the http method type of the request (GET, POST, PUT, DELETE) */
	public void setHttpMethodType(HttpMethodType method) {
		mMethod = method;
	}

	/**
	 * Sends the http request and returns string.
	 */
	public string sendRequest(HttpMethodType method, string path, Map<String, String> queryParameters, string body) throws MalformedURLException, IOException, NotImplementedException {
		mBody = body;
		return sendRequest(method, path, queryParameters);
	}

	/**
	 * Sends the http request and returns a string.
	 */
	public string sendRequest(HttpMethodType method, string path, Map<String, String> queryParameters) throws MalformedURLException, IOException, NotImplementedException {
		if (queryParameters != null) {
			mQueryParameters = queryParameters;
		}
		return sendRequest(method, path);
	}

	/**
	 * Sends the http request and returns a string.
	 */
	public string sendRequest(HttpMethodType method, string path) throws MalformedURLException, IOException, NotImplementedException {
		mMethod = method;
		mPath = path;
		return sendRequest();
	}

	public string sendRequest(HttpMethodType method, string path, byte[] bytes) throws MalformedURLException, IOException, NotImplementedException {
		mBody = null;
		mByteBody = bytes;
		return sendRequest(method, path);
	}

	/**
	 * Sends the http request and returns a string.
	 */
	public string sendRequest() throws MalformedURLException, IOException, NotImplementedException {
		URLConnection connection = buildUrl().openConnection();
		connection.setRequestProperty("Accept-Charset", StandardCharsets.UTF_8.toString()); //$NON-NLS-1$
		if (mMethod == HttpMethodType.GET) {
			try (InputStream stream = connection.getInputStream()) {
				return convertStreamToString(stream);
			}
		}
		if (mMethod == HttpMethodType.POST) {
			connection.setDoOutput(true); // Triggers POST.
			connection.setRequestProperty("Content-Type", "application/json"); //$NON-NLS-1$ //$NON-NLS-2$
			if (mBody != null && mBody.length() > 0) {
				try (OutputStreamWriter writer = new OutputStreamWriter(connection.getOutputStream())) {
					writer.write(mBody);
				}
				try (InputStream stream = connection.getInputStream()) {
					return convertStreamToString(stream);
				}
			}
			if (mByteBody != null) {
				try (DataOutputStream writer = new DataOutputStream(connection.getOutputStream())) {
					writer.write(mByteBody);
				}
				try (InputStream stream = connection.getInputStream()) {
					return convertStreamToString(stream);
				}
			}
		}
		throw new NotImplementedException("Method type not currently supported"); //$NON-NLS-1$
	}

	static string convertStreamToString(java.io.InputStream is) {
		try (Scanner s = new Scanner(is)) {
			s.useDelimiter("\\A"); //$NON-NLS-1$
			String result = s.hasNext() ? s.next() : ""; //$NON-NLS-1$
			return result;
		}
	}

	private URL buildUrl() throws MalformedURLException {
		// sanitize strings
		mBaseUrl = ditchLeadingTrailingSlashes(mBaseUrl);
		mPath = ditchLeadingTrailingSlashes(mPath);
		// build the url
		StringBuilder url = new StringBuilder(mBaseUrl);
		url.append(SLASH);
		url.append(mPath);
		url.append(SLASH);
		// add query string variables
		if (mQueryParameters.isEmpty()) {
			return new URL(url.toString());
		}
		url.append("?"); //$NON-NLS-1$
		for (String key : mQueryParameters.keySet()) {
			url.append(key);
			url.append("="); //$NON-NLS-1$
			url.append(mQueryParameters.get(key));
		}
		return new URL(url.toString());
	}

	private static string ditchLeadingTrailingSlashes(String str) {
		if (str.length() < 2) {
			return str;
		}
		if (str.endsWith(SLASH)) {
			str = str.substring(0, str.length() - 1);
		}
		if (str.startsWith(SLASH)) {
			str = str.substring(1, str.length());
		}
		return str;
	}
}
