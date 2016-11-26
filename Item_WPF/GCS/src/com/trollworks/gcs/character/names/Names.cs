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

using System;
using System.IO;
using System.Windows;

namespace com.trollworks.gcs.character.names
{
    /** An abstract base class for Name generation. */
    public abstract class Names
    {
        /**
         * A random number generator that can be shared amongst instances of the {@link Names} class.
         */
        protected static Random RANDOM = new Random();

        /** @return A newly generated male first Name. */
        public abstract string getMaleFirstName();

        /** @return A newly generated female first Name. */
        public abstract string getFemaleFirstName();

        /**
         * @param male Whether to generate a male or female Name.
         * @return A newly generated first Name.
         */
        public string getGivenName(bool male)
        {
            return male ? getMaleFirstName() : getFemaleFirstName();
        }

        /** @return A newly generated last Name. */
        public abstract string getLastName();

        /**
         * @param male Whether to generate a male or female Name.
         * @return A newly generated full (first and last) Name.
         */
        public string getFullName(bool male)
        {
            return getGivenName(male) + " " + getLastName(); //$NON-NLS-1$
        }

        /**
         * Loads names from a file into an array of strings. The names in the file should be listed one
         * per line.
         *
         * @param url The {@link URL} to load the Name data from.
         * @param fallback A single Name to use in case the file couldn't be loaded.
         * @return An array of strings representing the contents of the file.
         */
        protected static string[] loadNames(string url, string fallback)
        {
            string[] names;

            try
            {
                int count = 0;
                try
                {
                    using (StreamReader ins = new StreamReader(url))
                    {
                        string line = ins.ReadLine();
                        while (line != null)
                        {
                            if (line.Trim().Length > 0)
                            {
                                count++;
                            }
                            line = ins.ReadLine();
                        }
                    }
                }
                catch (Exception exception)
                {
                    MessageBox.Show("s: " +
                        exception);
                }

                names = new string[count];
                try
                {
                    using (StreamReader ins = new StreamReader(url))
                    {
                        string line = ins.ReadLine();
                        count = 0;
                        while (line != null)
                        {
                            line = line.Trim();
                            if (line.Length > 0)
                            {
                                names[count++] = line;
                            }
                            line = ins.ReadLine();
                        }
                    }
                }
                catch (Exception exception)
                {
                    // This should never occur... but if it does, we won't fail.
                    MessageBox.Show("s: " +
                 exception);
                    names = new string[]
                    {
                        fallback
                    };

                }
                return names;
            }
            catch (Exception exception)
            {
                names = new string[]
                    {
                        fallback
                    };
                MessageBox.Show("s: " +
                    exception);
                return names;

            }
            
        }

    }
}