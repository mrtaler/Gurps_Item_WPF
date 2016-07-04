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

namespace com.trollworks.gcs.character.names
{

    /** Generates random names from the 1990 U.S. census data. */
    public class USCensusNames : Names
    {
        /** The one and only global instance of this class. */
        public static USCensusNames INSTANCE = new USCensusNames();
        private static string[] FEMALE  = loadNames("USCensus1990FemaleFirstNames.txt",	"Mary");	//$NON-NLS-1$ //$NON-NLS-2$
		private static string[] MALE    = loadNames("USCensus1990MaleFirstNames.txt",	"Richard");	//$NON-NLS-1$ //$NON-NLS-2$
		private static string[] LAST    = loadNames("USCensus1990LastNames.txt",		"Wilkes");		//$NON-NLS-1$ //$NON-NLS-2$

	private USCensusNames()
        {
            // Just here to prevent external instantiation
        }


        public override string getLastName()
        {
            return LAST[RANDOM.Next(LAST.Length)];
        }


        public override string getFemaleFirstName()
        {
            return FEMALE[RANDOM.Next(FEMALE.Length)];
        }

        public override string getMaleFirstName()
        {
            return MALE[RANDOM.Next(MALE.Length)];
        }
    }
}