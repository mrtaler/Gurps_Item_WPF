///*
// * Copyright (c) 1998-2016 by Richard A. Wilkes. All rights reserved.
// *
// * This Source Code Form is subject to the terms of the Mozilla Public License,
// * version 2.0. If a copy of the MPL was not distributed with this file, You
// * can obtain one at http://mozilla.org/MPL/2.0/.
// *
// * This Source Code Form is "Incompatible With Secondary Licenses", as defined
// * by the Mozilla Public License, version 2.0.
// */



//using com.trollworks.toolkit.annotation.Localize;
//using com.trollworks.toolkit.utility.Localization;
//namespace com.trollworks.gcs.advantage
//{
//    /** The types of {@link Advantage} containers. */
//    public enum AdvantageContainerType {
//	/** The standard grouping container type. */
//	GROUP {
//		@Override
//		public string toString() {
//			return GROUP_TITLE;
//		}
//	},
//	/**
//	 * The meta-trait grouping container type. Acts as one normal trait, listed as an advantage if
//	 * its point total is positive, or a disadvantage if it is negative.
//	 */
//	META_TRAIT {
//		@Override
//		public string toString() {
//			return META_TRAIT_TITLE;
//		}
//	},
//	/**
//	 * The race grouping container type. Its point cost is tracked separately from normal advantages
//	 * and disadvantages.
//	 */
//	RACE {
//		@Override
//		public string toString() {
//			return RACE_TITLE;
//		}
//	},
//	/**
//	 * The alternative abilities grouping container type. It behaves similar to a
//	 * {@link #META_TRAIT} , but applies the rules for alternative abilities (see B61 and P11) to
//	 * its immediate children.
//	 */
//	ALTERNATIVE_ABILITIES {
//		@Override
//		public string toString() {
//			return ALTERNATIVE_ABILITIES_TITLE;
//		}
//	};

//	@Localize("Group")
//	@Localize(locale = "de", value = "Gruppe")
//	@Localize(locale = "ru", value = "Группа")
//	@Localize(locale = "es", value = "Grupo")
//	static String	GROUP_TITLE;
//	@Localize("Meta-Trait")
//	@Localize(locale = "de", value = "Meta-Eigenschaft")
//	@Localize(locale = "ru", value = "Мета-черта")
//	static String	META_TRAIT_TITLE;
//	@Localize("Race")
//	@Localize(locale = "de", value = "Rasse")
//	@Localize(locale = "ru", value = "Раса")
//	@Localize(locale = "es", value = "Raza")
//	static String	RACE_TITLE;
//	@Localize("Alternative Abilities")
//	@Localize(locale = "de", value = "Alternative Fähigkeiten")
//	@Localize(locale = "ru", value = "Альтернативные способности")
//	@Localize(locale = "es", value = "Habilidades Alternativas")
//	static String	ALTERNATIVE_ABILITIES_TITLE;

//	static {
//		Localization.initialize();
//	}
//}
