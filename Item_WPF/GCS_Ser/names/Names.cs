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

namespace Item_WPF.GCS_Ser.names
{
    /// <summary> 
    /// An abstract base class for name generation. 
    /// </summary>
    public abstract class Names
    {
        /// <summary> 
        /// A random number generator that can be shared amongst instances of the {@link Names} class.
        /// </summary>
        protected static Random Random = new Random();

        /// <summary>
        /// Get male first name
        /// </summary>
        /// <returns>A newly generated male first name</returns>
        public abstract string GetMaleFirstName();
        /// <summary>
        /// Get female first name
        /// </summary>
        /// <returns>A newly generated female first name</returns>
        public abstract string GetFemaleFirstName();

        /// <summary>
        /// * @param male Whether to generate a male or female name.
        /// * @return
        /// </summary>
        /// <returns>A newly generated first name.</returns>
        public string GetGivenName(bool male)
        {
            return male ? GetMaleFirstName() : GetFemaleFirstName();
        }

        /// <summary>
        /// Get Last name
        /// </summary>
        /// <returns>A newly generated last name.</returns>
        public abstract string GetLastName();

        /// <summary>
        /// * @param male Whether to generate a male or female name.
        /// * @return A newly generated full (first and last) name.
        /// </summary>
        public string GetFullName(bool male)
        {
            return GetGivenName(male) + " " + GetLastName(); //$NON-NLS-1$
        }

        /// <summary>
        ///  * Loads names from a file into an array of strings. The names in the file should be listed one
        ///  * per line.
        /// * @param url The {@link URL} to load the name data from.
        ///  * @param fallback A single name to use in case the file couldn't be loaded.
        ///  * @return An array of strings representing the contents of the file.
        /// </summary>
        protected static string[] LoadNames(string url, string fallback)
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
                    names = new[]
                    {
                        fallback
                    };

                }
                return names;
            }
            catch (Exception exception)
            {
                names = new[]
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