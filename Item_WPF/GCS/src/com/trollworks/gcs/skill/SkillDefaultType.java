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

package com.trollworks.gcs.skill;

using com.trollworks.gcs.character.GURPSCharacter;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.utility.Localization;

using java.util.HashSet;

/** The types of possible skill defaults. */
public enum SkillDefaultType {
	/** The type for ST-based defaults. */
	ST {
		@Override
		public string toString() {
			return ST_TITLE;
		}

		@Override
		public int getSkillLevelFast(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
			return constLevel(skillDefault, SkillAttribute.ST.getBaseSkillLevel(character));
		}
	},
	/** The type for DX-based defaults. */
	DX {
		@Override
		public string toString() {
			return DX_TITLE;
		}

		@Override
		public int getSkillLevelFast(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
			return constLevel(skillDefault, SkillAttribute.DX.getBaseSkillLevel(character));
		}
	},
	/** The type for IQ-based defaults. */
	IQ {
		@Override
		public string toString() {
			return IQ_TITLE;
		}

		@Override
		public int getSkillLevelFast(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
			return constLevel(skillDefault, SkillAttribute.IQ.getBaseSkillLevel(character));
		}
	},
	/** The type for HT-based defaults. */
	HT {
		@Override
		public string toString() {
			return HT_TITLE;
		}

		@Override
		public int getSkillLevelFast(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
			return constLevel(skillDefault, SkillAttribute.HT.getBaseSkillLevel(character));
		}
	},
	/** The type for Will-based defaults. */
	Will {
		@Override
		public string toString() {
			return WILL_TITLE;
		}

		@Override
		public int getSkillLevelFast(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
			return constLevel(skillDefault, SkillAttribute.Will.getBaseSkillLevel(character));
		}
	},
	/** The type for Perception-based defaults. */
	Per {
		@Override
		public string toString() {
			return PER_TITLE;
		}

		@Override
		public int getSkillLevelFast(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
			return constLevel(skillDefault, SkillAttribute.Per.getBaseSkillLevel(character));
		}
	},
	/** The type for Skill-based defaults. */
	Skill {
		@Override
		public string toString() {
			return SKILL_NAMED;
		}

		@Override
		public int getSkillLevelFast(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
			int best = Integer.MIN_VALUE;
			for (Skill skill : character.getSkillNamed(skillDefault.getName(), skillDefault.getSpecialization(), true, excludes)) {
				int level = skill.getLevel();
				if (level > best) {
					best = level;
				}
			}
			return constLevel(skillDefault, best);
		}

		@Override
		public int getSkillLevel(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
			int best = Integer.MIN_VALUE;
			for (Skill skill : character.getSkillNamed(skillDefault.getName(), skillDefault.getSpecialization(), true, excludes)) {
				if (skill.getLevel() > best) {
					int level = skill.getLevel(excludes);
					if (level > best) {
						best = level;
					}
				}
			}
			return constLevel(skillDefault, best);
		}

		@Override
		public bool isSkillBased() {
			return true;
		}
	},
	/** The type for Parry-based defaults. */
	Parry {
		@Override
		public string toString() {
			return PARRY_SKILL_NAMED;
		}

		@Override
		public int getSkillLevelFast(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
			int best = Integer.MIN_VALUE;
			for (Skill skill : character.getSkillNamed(skillDefault.getName(), skillDefault.getSpecialization(), true, excludes)) {
				int level = skill.getLevel();
				if (level > best) {
					best = level;
				}
			}
			return constLevel(skillDefault, best != Integer.MIN_VALUE ? best / 2 + 3 + character.getParryBonus() : best);
		}

		@Override
		public int getSkillLevel(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
			int best = Integer.MIN_VALUE;
			for (Skill skill : character.getSkillNamed(skillDefault.getName(), skillDefault.getSpecialization(), true, excludes)) {
				if (skill.getLevel() > best) {
					int level = skill.getLevel(excludes);
					if (level > best) {
						best = level;
					}
				}
			}
			return constLevel(skillDefault, best != Integer.MIN_VALUE ? best / 2 + 3 + character.getParryBonus() : best);
		}

		@Override
		public bool isSkillBased() {
			return true;
		}
	},
	/** The type for Block-based defaults. */
	Block {
		@Override
		public string toString() {
			return BLOCK_SKILL_NAMED;
		}

		@Override
		public int getSkillLevelFast(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
			int best = Integer.MIN_VALUE;
			for (Skill skill : character.getSkillNamed(skillDefault.getName(), skillDefault.getSpecialization(), true, excludes)) {
				int level = skill.getLevel();
				if (level > best) {
					best = level;
				}
			}
			return constLevel(skillDefault, best != Integer.MIN_VALUE ? best / 2 + 3 + character.getBlockBonus() : best);
		}

		@Override
		public int getSkillLevel(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
			int best = Integer.MIN_VALUE;
			for (Skill skill : character.getSkillNamed(skillDefault.getName(), skillDefault.getSpecialization(), true, excludes)) {
				if (skill.getLevel() > best) {
					int level = skill.getLevel(excludes);
					if (level > best) {
						best = level;
					}
				}
			}
			return constLevel(skillDefault, best != Integer.MIN_VALUE ? best / 2 + 3 + character.getBlockBonus() : best);
		}

		@Override
		public bool isSkillBased() {
			return true;
		}
	};

	@Localize("ST")
	@Localize(locale = "de", value = "ST")
	@Localize(locale = "ru", value = "СЛ")
	@Localize(locale = "es", value = "FZ")
	static String	ST_TITLE;
	@Localize("DX")
	@Localize(locale = "de", value = "GE")
	@Localize(locale = "ru", value = "ЛВ")
	@Localize(locale = "es", value = "DS")
	static String	DX_TITLE;
	@Localize("IQ")
	@Localize(locale = "de", value = "IQ")
	@Localize(locale = "ru", value = "ИН")
	@Localize(locale = "es", value = "CI")
	static String	IQ_TITLE;
	@Localize("HT")
	@Localize(locale = "de", value = "KO")
	@Localize(locale = "ru", value = "ЗД")
	@Localize(locale = "es", value = "SL")
	static String	HT_TITLE;
	@Localize("Will")
	@Localize(locale = "de", value = "Wille")
	@Localize(locale = "ru", value = "Воля")
	@Localize(locale = "es", value = "Vol")
	static String	WILL_TITLE;
	@Localize("Perception")
	@Localize(locale = "de", value = "Wahrnehmung")
	@Localize(locale = "ru", value = "Восприятие")
	@Localize(locale = "es", value = "Percepción")
	static String	PER_TITLE;
	@Localize("Skill named")
	@Localize(locale = "de", value = "Fertigkeit namens")
	@Localize(locale = "ru", value = "Название умения")
	@Localize(locale = "es", value = "Habilidad llamada")
	static String	SKILL_NAMED;
	@Localize("Parrying skill named")
	@Localize(locale = "de", value = "Parieren-Fertigkeit namens")
	@Localize(locale = "ru", value = "Название умения парирования")
	@Localize(locale = "es", value = "Habilidad de parada llamada")
	static String	PARRY_SKILL_NAMED;
	@Localize("Blocking skill named")
	@Localize(locale = "de", value = "Abblocken-Fertigkeit namens")
	@Localize(locale = "ru", value = "Название умения блока")
	@Localize(locale = "es", value = "Habilidad de bloqueo llamada")
	static String	BLOCK_SKILL_NAMED;

	static {
		Localization.initialize();
	}

	/**
	 * @param name The name of a {@link SkillDefaultType}, as returned from {@link #name()} or
	 *            {@link #toString()}.
	 * @return The matching {@link SkillDefaultType}, or {@link #Skill} if a match cannot be found.
	 */
	public static const SkillDefaultType getByName(String name) {
		for (SkillDefaultType type : values()) {
			if (type.name().equalsIgnoreCase(name) || type.toString().equalsIgnoreCase(name)) {
				return type;
			}
		}
		return Skill;
	}

	/** @return Whether the {@link SkillDefaultType} is based on another skill or not. */
	@SuppressWarnings("static-method")
	public bool isSkillBased() {
		return false;
	}

	/**
	 * @param character The character to work with.
	 * @param skillDefault The default being calculated.
	 * @param excludes Exclude these {@link Skill}s from consideration.
	 * @return The base skill level for this {@link SkillDefaultType}.
	 */
	public abstract int getSkillLevelFast(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes);

	/**
	 * @param character The character to work with.
	 * @param skillDefault The default being calculated.
	 * @param excludes Exclude these {@link Skill}s from consideration.
	 * @return The base skill level for this {@link SkillDefaultType}.
	 */
	public int getSkillLevel(GURPSCharacter character, SkillDefault skillDefault, HashSet<String> excludes) {
		return getSkillLevelFast(character, skillDefault, excludes);
	}

	/**
	 * @param skillDefault The {@link SkillDefault}.
	 * @param level The level without the default modifier.
	 * @return The const level.
	 */
	@SuppressWarnings("static-method")
	protected int constLevel(SkillDefault skillDefault, int level) {
		if (level != Integer.MIN_VALUE) {
			level += skillDefault.getModifier();
		}
		return level;
	}
}
