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

using Item_WPF.GCS_Ser.names;

namespace com.trollworks.gcs.character.names
{

    /** Generates random names from the 1990 U.S. census data. */
    public class USCensusNames : Names
    {
        /** The one and only global instance of this class. */
        public static USCensusNames INSTANCE = new USCensusNames();
        private static string[] female = LoadNames("USCensus1990FemaleFirstNames.txt", "Mary"); //$NON-NLS-1$ //$NON-NLS-2$
        private static string[] male = LoadNames("USCensus1990MaleFirstNames.txt", "Richard");  //$NON-NLS-1$ //$NON-NLS-2$
        private static string[] last = LoadNames("USCensus1990LastNames.txt", "Wilkes");        //$NON-NLS-1$ //$NON-NLS-2$

        private USCensusNames()
        {
            // Just here to prevent external instantiation
        }

        /// <summary>
        /// Get Last name
        /// </summary>
        /// <returns>A newly generated last name.</returns>
        public override string GetLastName()
        {
            return last[Random.Next(last.Length)];
        }
        /// <summary>
        /// Get female first name
        /// </summary>
        /// <returns>A newly generated female first name</returns>
        public override string GetFemaleFirstName()
        {
            return female[Random.Next(female.Length)];
        }
        /// <summary>
        /// Get male first name
        /// </summary>
        /// <returns>A newly generated male first name</returns>
        public override string GetMaleFirstName()
        {
            return male[Random.Next(male.Length)];
        }
    }
}