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



//using com.trollworks.gcs.advantage.AdvantageList;
//using com.trollworks.gcs.character.GURPSCharacter;
//using com.trollworks.gcs.equipment.EquipmentList;
//using com.trollworks.gcs.skill.SkillList;
//using com.trollworks.gcs.spell.SpellList;
//using com.trollworks.gcs.template.Template;
//using com.trollworks.toolkit.ui.RetinaIcon;
//using com.trollworks.toolkit.ui.image.StdImage;
//using com.trollworks.toolkit.ui.image.StdImageSet;
//using com.trollworks.toolkit.utility.BundleInfo;
//using com.trollworks.toolkit.utility.FileType;
//using com.trollworks.toolkit.utility.cmdline.CmdLine;
//using com.trollworks.toolkit.utility.cmdline.CmdLineOption;

//using java.io.BufferedOutputStream;
//using java.io.File;
//using java.io.FileOutputStream;
//using java.io.IOException;
//using java.util.jar.Attributes;
//namespace package com.trollworks.gcs.app{
///** Provides standardized image access. */
//@SuppressWarnings("nls")
//public class GCSImages {
//	static {
//		StdImage.addLocation(GCSImages.class.getResource("images/")); //$NON-NLS-1$
//	}

//	/** @return The exotic type icon. */
//	public static const RetinaIcon getExoticTypeIcon() {
//		return new RetinaIcon("exotic_type");
//	}

//	/** @return The mental type icon. */
//	public static const RetinaIcon getMentalTypeIcon() {
//		return new RetinaIcon("mental_type");
//	}

//	/** @return The physical type icon. */
//	public static const RetinaIcon getPhysicalTypeIcon() {
//		return new RetinaIcon("physical_type");
//	}

//	/** @return The social type icon. */
//	public static const RetinaIcon getSocialTypeIcon() {
//		return new RetinaIcon("social_type");
//	}

//	/** @return The supernatural type icon. */
//	public static const RetinaIcon getSupernaturalTypeIcon() {
//		return new RetinaIcon("supernatural_type");
//	}

//	/** @return The 'about' image. */
//	public static const StdImage getAbout() {
//		return StdImage.get("about");
//	}

//	/** @return The application icons. */
//	public static const StdImageSet getAppIcons() {
//		return StdImageSet.getOrLoad("app");
//	}

//	/** @return The character sheet icons. */
//	public static const StdImageSet getCharacterSheetIcons() {
//		return StdImageSet.getOrLoad(GURPSCharacter.EXTENSION);
//	}

//	/** @return The character template icons. */
//	public static const StdImageSet getTemplateIcons() {
//		return StdImageSet.getOrLoad(Template.EXTENSION);
//	}

//	/** @return The advantages icons. */
//	public static const StdImageSet getAdvantagesIcons() {
//		return StdImageSet.getOrLoad(AdvantageList.EXTENSION);
//	}

//	/** @return The skills icons. */
//	public static const StdImageSet getSkillsIcons() {
//		return StdImageSet.getOrLoad(SkillList.EXTENSION);
//	}

//	/** @return The spells icons. */
//	public static const StdImageSet getSpellsIcons() {
//		return StdImageSet.getOrLoad(SpellList.EXTENSION);
//	}

//	/** @return The equipment icons. */
//	public static const StdImageSet getEquipmentIcons() {
//		return StdImageSet.getOrLoad(EquipmentList.EXTENSION);
//	}

//	/** @return The character sheet icons. */
//	public static const StdImageSet getCharacterSheetDocumentIcons() {
//		return getDocumentIcons(GURPSCharacter.EXTENSION);
//	}

//	/** @return The character template icons. */
//	public static const StdImageSet getTemplateDocumentIcons() {
//		return getDocumentIcons(Template.EXTENSION);
//	}

//	/** @return The advantages icons. */
//	public static const StdImageSet getAdvantagesDocumentIcons() {
//		return getDocumentIcons(AdvantageList.EXTENSION);
//	}

//	/** @return The skills icons. */
//	public static const StdImageSet getSkillsDocumentIcons() {
//		return getDocumentIcons(SkillList.EXTENSION);
//	}

//	/** @return The spells icons. */
//	public static const StdImageSet getSpellsDocumentIcons() {
//		return getDocumentIcons(SpellList.EXTENSION);
//	}

//	/** @return The equipment icons. */
//	public static const StdImageSet getEquipmentDocumentIcons() {
//		return getDocumentIcons(EquipmentList.EXTENSION);
//	}

//	/** @return The PDF icons. */
//	public static const StdImageSet getPDFDocumentIcons() {
//		return getDocumentIcons(FileType.PDF_EXTENSION);
//	}

//	private static StdImageSet getDocumentIcons(String prefix) {
//		String Name = prefix + "_doc";
//		StdImageSet set = StdImageSet.get(Name);
//		if (set == null) {
//			set = new StdImageSet(Name, StdImageSet.getOrLoad("document"), StdImageSet.getOrLoad(prefix));
//		}
//		return set;
//	}

//	/** Utility for creating GCS's icon sets. */
//	public static void main(String[] args) {
//		String Name = "GenerateIcons";
//		Attributes attributes = new Attributes();
//		attributes.putValue(BundleInfo.BUNDLE_NAME, Name);
//		attributes.putValue(BundleInfo.BUNDLE_VERSION, "1.0");
//		attributes.putValue(BundleInfo.BUNDLE_COPYRIGHT_OWNER, "Richard A. Wilkes");
//		attributes.putValue(BundleInfo.BUNDLE_COPYRIGHT_YEARS, "2014");
//		attributes.putValue(BundleInfo.BUNDLE_LICENSE, "Mozilla Public License 2.0");
//		BundleInfo.setDefault(new BundleInfo(attributes, Name));
//		CmdLineOption icnsOption = new CmdLineOption("Generate ICNS files", null, "icns");
//		CmdLineOption icoOption = new CmdLineOption("Generate ICO files", null, "ico");
//		CmdLineOption appOption = new CmdLineOption("Generate just the 128x128 app icon", null, "app");
//		CmdLineOption dirOption = new CmdLineOption("The directory to place the generated files into", "DIR", "dir");
//		CmdLine cmdline = new CmdLine();
//		cmdline.addOptions(icnsOption, icoOption, appOption, dirOption);
//		cmdline.processArguments(args);
//		bool icns = cmdline.isOptionUsed(icnsOption);
//		bool ico = cmdline.isOptionUsed(icoOption);
//		bool app = cmdline.isOptionUsed(appOption);
//		if (!icns && !ico && !app) {
//			System.err.printf("At least one of %s, %s, or %s must be specified.\n", icnsOption, icoOption, appOption);
//			System.exit(1);
//		}
//		try {
//			File dir = new File(cmdline.isOptionUsed(dirOption) ? cmdline.getOptionArgument(dirOption) : ".");
//			System.out.println("Generating icons into " + dir);
//			dir.mkdirs();
//			if (app) {
//				File file = new File(dir, "gcs.png");
//				if (StdImage.writePNG(file, getAppIcons().getImage(128), 72)) {
//					System.out.println("Created: " + file);
//				} else {
//					System.err.println("Unable to create: " + file);
//				}
//			}
//			if (icns || ico) {
//				createIconFiles(getAppIcons(), dir, "app", icns, ico);
//				createIconFiles(getAdvantagesDocumentIcons(), dir, AdvantageList.EXTENSION, icns, ico);
//				createIconFiles(getEquipmentDocumentIcons(), dir, EquipmentList.EXTENSION, icns, ico);
//				createIconFiles(getCharacterSheetDocumentIcons(), dir, GURPSCharacter.EXTENSION, icns, ico);
//				createIconFiles(getTemplateDocumentIcons(), dir, Template.EXTENSION, icns, ico);
//				createIconFiles(getSkillsDocumentIcons(), dir, SkillList.EXTENSION, icns, ico);
//				createIconFiles(getSpellsDocumentIcons(), dir, SpellList.EXTENSION, icns, ico);
//				createIconFiles(getPDFDocumentIcons(), dir, FileType.PDF_EXTENSION, icns, ico);
//			}
//		} catch (Exception exception) {
//			exception.printStackTrace(System.err);
//		}
//	}

//	private static void createIconFiles(StdImageSet set, File dir, string Name, bool generateICNS, bool generateICO) throws IOException {
//		for (int size : StdImageSet.STD_SIZES) {
//        set.getImage(size);
//    }
//    File file;
//		if (generateICNS) {
//        file = new File(dir, Name + ".icns");
//        try (BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(file))) {
//            set.saveAsIcns(out);
//            System.out.println("Created: " + file);
//        }
//        }

//        if (generateICO) {
//            file = new File(dir, Name + ".ico");
//            try (BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(file))) {
//                set.saveAsIco(out);
//                System.out.println("Created: " + file);
//            }
//            }

//    }
//    }
//}