// *************************
// unbenutzte Item - Visuals
// *************************

// ItMw_2H_Sword_Sleeper_01 // Uriziel ungeladen
// ItMw_2H_Sword_Sleeper_02 // Uriziel geladen

// ItMw_2H_Axe_Old_03 // alter Richter
// ItMw_2H_Axe_Old_01 // alte Streitaxt

// ItMw_1H_Sword_Broad_01 // Breitschwert 1h
// ItMw_1H_Sword_Long_03 // Hassbringer
// ItMw_1H_Sword_05 // Kriegsschwert
// ItMw_1H_Sword_04 // Kampfschwert
// ItMw_1H_Sword_02 // Richtschwert
// ItMw_2H_Staff_02 // Richtstab
// ItMw_2H_Staff_01 // Kampfstab
// ItMw_1H_Scythe_01 // Schnitter
// ItMw_1H_Sword_Short_02 // Bauernwehr
// ItMw_1H_Sword_Short_01 // Kurzschwert

// ItMw_1H_Poker_01 // Schürhaken

// *****************************************************
// Waffen in der Welt (ab Kapitel 1)
// ---------------------------------
// Hier alle Waffen, die bei mortal-NSCs
// oder in die Welt objektiert zu finden sind
// Alle haben sehr geringen Wert
// Alle können (theoretisch) in Kapitel 1 erlangt werden
// *****************************************************
instance ItMw_1h_Vlk_Dagger(C_Item)
{
	name						= "Dolch";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "Itmw_005_1h_dagger_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_VLKDolch;

	damageTotal					= Damage_VLKDolch;
	damageType					= DAM_EDGE;
	range						= RANGE_VLKDolch;

	value						= Value_VLKDolch;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1H_Mace_L_01(C_Item)
{
	name						= "Schürhaken";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "Itmw_005_1h_poker_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schuerhaken;

	damageTotal					= Damage_Schuerhaken;
	damageType					= DAM_EDGE;
	range						= RANGE_Schuerhaken;

	value						= Value_Schuerhaken;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1h_Bau_Axe(C_Item)
{
	name						= "Sichel";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "Itmw_007_1h_sickle_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_BauAxe;

	damageTotal					= Damage_BauAxe;
	damageType					= DAM_EDGE;
	range						= RANGE_BauAxe;

	value						= Value_BauAxe;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1h_Vlk_Mace(C_Item)
{
	name						= "Gehstock";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "Itmw_008_1h_pole_01.3ds";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_VLKMace;

	damageTotal					= Damage_VLKMace;
	damageType					= DAM_BLUNT;
	range						= RANGE_VLKMace;

	value						= Value_VLKMace;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1H_Mace_L_03(C_Item)
{
	name						= "Belegnagel";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_008_1h_mace_light_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Belegnagel;

	damageTotal					= Damage_Belegnagel;
	damageType					= DAM_BLUNT;
	range						= Range_Belegnagel;

	value						= Value_Belegnagel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1h_Bau_Mace(C_Item)
{
	name						= "Schwerer Ast";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_010_1h_Club_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_BauMace;

	damageTotal					= Damage_BauMace;
	damageType					= DAM_BLUNT;
	range						= RANGE_BauMace;

	value						= Value_BauMace;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1h_Vlk_Axe(C_Item)
{
	name						= "Beil";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "Itmw_010_1h_vlk_hatchet_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_VLKAxe;

	damageTotal					= Damage_VLKAxe;
	damageType					= DAM_EDGE;
	range						= RANGE_VLKAxe;

	value						= Value_VLKAxe;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1H_Mace_L_04(C_Item)
{
	name						= "Schmiedehammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_010_1h_sledgehammer_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schmiedehammer;

	damageTotal					= Damage_Schmiedehammer;
	damageType					= DAM_BLUNT;
	range						= Range_Schmiedehammer;

	value						= Value_Schmiedehammer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_ShortSword1(C_Item)
{
	name						= "Kurzschwert der Miliz";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_010_1h_Sword_short_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_ShortSword1;

	damageTotal					= Damage_ShortSword1;
	damageType					= DAM_EDGE;
	range						= Range_ShortSword1;

	value						= Value_ShortSword1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_Nagelknueppel(C_Item)
{
	name						= "Nagelknüppel"; // für Banditen

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_012_1h_Nailmace_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Nagelknueppel;

	damageTotal					= Damage_Nagelknueppel;
	damageType					= DAM_BLUNT;
	range						= Range_Nagelknueppel;

	value						= Value_Nagelknueppel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1H_Sword_L_03(C_Item)
{
	name						= "Wolfsklinge";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_012_1h_Knife_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Wolfsklinge;

	damageTotal					= Damage_Wolfsklinge;
	damageType					= DAM_EDGE;
	range						= Range_Wolfsklinge;

	value						= Value_Wolfsklinge;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_ShortSword2(C_Item)
{
	name						= "Grobes Kurzschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_012_1h_Sword_short_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_ShortSword2;

	damageTotal					= Damage_ShortSword2;
	damageType					= DAM_EDGE;
	range						= Range_ShortSword2;

	value						= Value_ShortSword2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_Sense(C_Item)
{
	name						= "Kleine Sense";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_012_1h_Scythe_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Sense;

	damageTotal					= Damage_Sense;
	damageType					= DAM_EDGE;
	range						= Range_Sense;

	value						= Value_Sense;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1h_Vlk_Sword(C_Item)
{
	name						= "Degen";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_018_1h_SwordCane_01.3ds";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_VLKSchwert;

	damageTotal					= Damage_VLKSchwert;
	damageType					= DAM_EDGE;
	range						= RANGE_VLKSchwert;

	on_equip					= Equip_1H_05;
	on_unequip					= UnEquip_1H_05;

	value						= Value_VLKSchwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_05;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1h_Nov_Mace(C_Item)
{
	name						= "Kampfstab";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_020_2h_Nov_Staff_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_NovMace;

	damageTotal					= Damage_NovMace;
	damageType					= DAM_BLUNT;
	range						= RANGE_NovMace;

	value						= Value_NovMace;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_2h_Bau_Axe(C_Item)
{
	name						= "Holzfälleraxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_020_2h_Axe_Lumberjack_01.3ds";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Bau2hAxt;

	damageTotal					= Damage_Bau2hAxt;
	damageType					= DAM_EDGE;
	range						= RANGE_Bau2hAxt;

	value						= Value_Bau2hAxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_2H_Axe_L_01(C_Item)
{
	name						= "Spitzhacke";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE | ITEM_NSPLIT;

	visual						= "ItMw_020_2h_Pickaxe_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Spitzhacke;

	damageTotal					= Damage_Spitzhacke;
	damageType					= DAM_EDGE;
	range						= Range_Spitzhacke;

	value						= Value_Spitzhacke;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1h_MISC_Sword(C_Item)
{
	name						= "Rostiges Schwert"; // STANDARDOBJEKTIERUNG

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_020_1h_sword_old_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_MiscSword;

	damageTotal					= Damage_MiscSword;
	damageType					= DAM_EDGE;
	range						= RANGE_MiscSword;

	value						= Value_MiscSword;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1h_Misc_Axe(C_Item)
{
	name						= "Rostige Axt"; // STANDARDOBJEKTIERUNG

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_025_2h_Misc_Axe_old_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_MiscAxe;

	damageTotal					= Damage_MiscAxe;
	damageType					= DAM_EDGE;
	range						= RANGE_MiscAxe;

	value						= Value_MiscAxe;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_2H_Sword_M_01(C_Item)
{
	name						= "Rostiger Zweihänder"; // STANDARDOBJEKTIERUNG

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_025_2h_Sword_old_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Misc2hSword;

	damageTotal					= Damage_Misc2hSword;
	damageType					= DAM_EDGE;
	range						= Range_Misc2hSword;

	value						= Value_Misc2hSword;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1h_Mil_Sword(C_Item)
{
	name						= "Grobes Breitschwert"; // NUR MILIZ

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "Itmw_025_1h_Mil_Sword_broad_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_MilSchwert;

	damageTotal					= Damage_MilSchwert;
	damageType					= DAM_EDGE;
	range						= RANGE_MilSchwert;

	value						= Value_MilSchwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1h_Sld_Axe(C_Item)
{
	name						= "Grobes Kriegsbeil"; // SÖLDNER

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_025_1h_sld_axe_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Sld1hAxt;

	damageTotal					= Damage_Sld1hAxt;
	damageType					= DAM_EDGE;
	range						= RANGE_Sld1hAxt;

	value						= Value_Sld1hAxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1h_Sld_Sword(C_Item)
{
	name						= "Grobes Schwert"; // SÖLDNER

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_025_1h_sld_sword_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Sld1hSchwert;

	damageTotal					= Damage_Sld1hSchwert;
	damageType					= DAM_EDGE;
	range						= RANGE_Sld1hSchwert;

	value						= Value_Sld1hSchwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
// ****** folgende Waffen sind eigentlich zu gut für Kapitel 1, NSCs sind aber noch VIEL zu stark ******
instance ItMw_2h_Sld_Axe(C_Item)
{
	name						= "Grobe Kriegsaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_035_2h_sld_axe_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Sld2hAxe;

	damageTotal					= Damage_Sld2hAxe;
	damageType					= DAM_EDGE;
	range						= RANGE_Sld2hAxe;

	value						= Value_Sld2hAxe;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_2h_Sld_Sword(C_Item)
{
	name						= "Grober Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_035_2h_sld_sword_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Sld2hSchwert;

	damageTotal					= Damage_Sld2hSchwert;
	damageType					= DAM_EDGE;
	range						= RANGE_Sld2hSchwert;

	value						= Value_Sld2hSchwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_1h_Pal_Sword(C_Item)
{
	name						= "Paladinschwert"; // NUR PALADIN

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_030_1h_PAL_Sword_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_PalSchwert;

	damageTotal					= Damage_PalSchwert;
	damageType					= DAM_EDGE;
	range						= RANGE_PalSchwert;

	value						= Value_PalSchwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_2h_Pal_Sword(C_Item)
{
	name						= "Paladin Zweihänder"; // NUR PALADIN

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_040_2h_PAL_Sword_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_PalZweihaender;

	damageTotal					= Damage_PalZweihaender;
	damageType					= DAM_EDGE;
	range						= RANGE_PalZweihaender;

	value						= Value_PalZweihaender;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
// ************************************
// Ork- und Echsenmenschenwaffen
// -----------------------------
// ACHTUNG: Orkwaffen können auch schon
// in Kapitel 1 erlangt werden!
// ************************************
instance ItMw_2H_OrcAxe_01(C_Item)
{
	name						= "Leichte Orkaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_OrcAxe_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Orkaxt_01;

	damageTotal					= Damage_Orkaxt_01;
	damageType					= DAM_EDGE;
	range						= Range_Orkaxt_01;

	value						= Value_Orkaxt_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_2H_OrcAxe_02(C_Item)
{
	name						= "Mittlere Orkaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_OrcAxe_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Orkaxt_02;

	damageTotal					= Damage_Orkaxt_02;
	damageType					= DAM_EDGE;
	range						= Range_Orkaxt_02;

	value						= Value_Orkaxt_02;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_2H_OrcAxe_03(C_Item)
{
	name						= "Schwere Orkaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_OrcAxe_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Orkaxt_03;

	damageTotal					= Damage_Orkaxt_03;
	damageType					= DAM_EDGE;
	range						= Range_Orkaxt_03;

	value						= Value_Orkaxt_03;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_2H_OrcAxe_04(C_Item)
{
	name						= "Brutale Orkaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_OrcAxe_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Orkaxt_04;

	damageTotal					= Damage_Orkaxt_04;
	damageType					= DAM_EDGE;
	range						= Range_Orkaxt_04;

	value						= Value_Orkaxt_04;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_2H_OrcSword_01(C_Item) // *** für Drakonier!!! ***
{
	name						= "Echsenschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_OrcSword_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Orkschwert;

	damageTotal					= Damage_Orkschwert;
	damageType					= DAM_EDGE;
	range						= Range_Orkschwert;

	value						= Value_Orkschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_2H_OrcSword_02(C_Item) // *** für Orcritter!!! ***
{
	name						= "Orkisches Kriegschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_OrcSword_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Orkschwert_01;

	damageTotal					= Damage_Orkschwert_01;
	damageType					= DAM_EDGE;
	range						= Range_Orkschwert_01;

	value						= Value_Orkschwert_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/

// *******************
// Kapitel 1 - Händler
// *******************
instance ItMw_ShortSword3(C_Item)
{
	name						= "Kurzschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_016_1h_Sword_short_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_ShortSword3;

	damageTotal					= Damage_ShortSword3;
	damageType					= DAM_EDGE;
	range						= Range_ShortSword3;

	value						= Value_ShortSword3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Nagelkeule(C_Item)
{
	name						= "Nagelkeule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_018_1h_Mace_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Nagelkeule;

	damageTotal					= Damage_Nagelkeule;
	damageType					= DAM_BLUNT;
	range						= Range_Nagelkeule;

	value						= Value_Nagelkeule;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_ShortSword4(C_Item)
{
	name						= "Wolfszahn";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_020_1h_Sword_short_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_ShortSword4;

	damageTotal					= Damage_ShortSword4;
	damageType					= DAM_EDGE;
	range						= Range_ShortSword4;

	value						= Value_ShortSword4;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Kriegskeule(C_Item)
{
	name						= "Kriegskeule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_022_1h_mace_war_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Kriegskeule;

	damageTotal					= Damage_Kriegskeule;
	damageType					= DAM_BLUNT;
	range						= Range_Kriegskeule;

	value						= Value_Kriegskeule;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Richtstab(C_Item)
{
	name						= "Richtstab";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_025_2h_Staff_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Richtstab;

	damageTotal					= Damage_Richtstab;
	damageType					= DAM_EDGE;
	range						= Range_Richtstab;

	value						= Value_Richtstab;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_ShortSword5(C_Item)
{
	name						= "edles Kurzschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_025_1h_Sword_short_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_ShortSword5;

	damageTotal					= Damage_ShortSword5;
	damageType					= DAM_EDGE;
	range						= Range_ShortSword5;

	value						= Value_ShortSword5;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Kriegshammer1(C_Item)
{
	name						= "Kriegshammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_028_1h_warhammer_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Kriegshammer1;

	damageTotal					= Damage_Kriegshammer1;
	damageType					= DAM_BLUNT;
	range						= Range_Kriegshammer1;

	value						= Value_Kriegshammer1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Hellebarde(C_Item)
{
	name						= "Hellebarde";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "itmw_028_2h_halberd_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Hellebarde;

	damageTotal					= Damage_Hellebarde;
	damageType					= DAM_EDGE;
	range						= Range_Hellebarde;

	value						= Value_Hellebarde;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Nagelkeule2(C_Item)
{
	name						= "Schwere Nagelkeule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_018_1h_Mace_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Nagelkeule2;

	damageTotal					= Damage_Nagelkeule2;
	damageType					= DAM_BLUNT;
	range						= Range_Nagelkeule2;

	value						= Value_Nagelkeule2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Schiffsaxt(C_Item)
{
	name						= "Schiffsaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_030_1h_axe_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schiffsaxt;

	damageTotal					= Damage_Schiffsaxt;
	damageType					= DAM_EDGE;
	range						= Range_Schiffsaxt;

	value						= Value_Schiffsaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Piratensaebel(C_Item)
{
	name						= "Piratensäbel";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_030_1h_sword_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Piratensaebel;

	damageTotal					= Damage_Piratensaebel;
	damageType					= DAM_EDGE;
	range						= Range_Piratensaebel;

	value						= Value_Piratensaebel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Schwert(C_Item)
{
	name						= "Grobes Langschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_030_1h_sword_long_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schwert;

	damageTotal					= Damage_Schwert;
	damageType					= DAM_EDGE;
	range						= Range_Schwert;

	value						= Value_Schwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// ****************************
// Schmieden Kapitel 1 (Common)
// ****************************
instance ItMw_1H_Common_01(C_Item)
{
	name						= NAME_ItMw_1H_Common_01;

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_030_1h_Common_Sword_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Common1;

	damageTotal					= Damage_Common1;
	damageType					= DAM_EDGE;
	range						= Range_Common1;

	on_equip					= Equip_1H_05;
	on_unequip					= UnEquip_1H_05;

	value						= Value_Common1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_05;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// *******************
// Kapitel 2 - Händler
// *******************
instance ItMw_Stabkeule(C_Item)
{
	name						= "Stabkeule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_032_2h_staff_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Stabkeule;

	damageTotal					= Damage_Stabkeule;
	damageType					= DAM_BLUNT;
	range						= Range_Stabkeule;

	value						= Value_Stabkeule;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Zweihaender1(C_Item)
{
	name						= "Leichter Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_032_2h_sword_light_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Zweihaender1;

	damageTotal					= Damage_Zweihaender1;
	damageType					= DAM_EDGE;
	range						= Range_Zweihaender1;

	value						= Value_Zweihaender1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Steinbrecher(C_Item)
{
	name						= "Steinbrecher";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_035_1h_mace_war_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Steinbrecher;

	damageTotal					= Damage_Steinbrecher;
	damageType					= DAM_BLUNT;
	range						= Range_Steinbrecher;

	value						= Value_Steinbrecher;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Spicker(C_Item)
{
	name						= "Schädelspicker";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_035_1h_mace_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Spicker;

	damageTotal					= Damage_Spicker;
	damageType					= DAM_BLUNT; // Point Schaden führt direkt zum Tod!!
	range						= Range_Spicker;

	value						= Value_Spicker;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Streitaxt1(C_Item)
{
	name						= "Leichte Streitaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_035_2h_Axe_light_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Streitaxt1;

	damageTotal					= Damage_Streitaxt1;
	damageType					= DAM_EDGE;
	range						= Range_Streitaxt1;

	value						= Value_Streitaxt1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Schwert1(C_Item)
{
	name						= "Edles Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_035_1h_Sword_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schwert1;

	damageTotal					= Damage_Schwert1;
	damageType					= DAM_EDGE;
	range						= Range_Schwert1;

	on_equip					= Equip_1H_05;
	on_unequip					= UnEquip_1H_05;

	value						= Value_Schwert1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_05;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Schwert2(C_Item)
{
	name						= "Langschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_037_1h_sword_long_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schwert2;

	damageTotal					= Damage_Schwert2;
	damageType					= DAM_EDGE;
	range						= Range_Schwert2;

	value						= Value_Schwert2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Doppelaxt(C_Item)
{
	name						= "Doppelaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_040_1h_Axe_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Doppelaxt;

	damageTotal					= Damage_Doppelaxt;
	damageType					= DAM_EDGE;
	range						= Range_Doppelaxt;

	value						= Value_Doppelaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Bartaxt(C_Item)
{
	name						= "Bartaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_040_1h_axe_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Bartaxt;

	damageTotal					= Damage_Bartaxt;
	damageType					= DAM_EDGE;
	range						= Range_Bartaxt;

	value						= Value_Bartaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Morgenstern(C_Item)
{
	name						= "Morgenstern";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMW_045_1h_mace_04.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Morgenstern;

	damageTotal					= Damage_Morgenstern;
	damageType					= DAM_BLUNT;
	range						= Range_Morgenstern;

	value						= Value_Morgenstern;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Schwert3(C_Item)
{
	name						= "Grobes Bastardschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_045_1h_Sword_Bastard_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schwert3;

	damageTotal					= Damage_Schwert3;
	damageType					= DAM_EDGE;
	range						= RANGE_Schwert3;

	value						= Value_Schwert3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Schwert4(C_Item)
{
	name						= "Edles Langschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_045_1h_Sword_long_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schwert4;

	damageTotal					= Damage_Schwert4;
	damageType					= DAM_EDGE;
	range						= RANGE_Schwert4;

	on_equip					= Equip_1H_06;
	on_unequip					= UnEquip_1H_06;

	value						= Value_Schwert4;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_06;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// *******************
// Schmieden Kapitel 2
// *******************
instance ItMw_1H_Special_01(C_Item)
{
	name						= NAME_ItMw_1H_Special_01;

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_045_1h_Sword_smith_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Special_1H_1;

	damageTotal					= Damage_Special_1H_1;
	damageType					= DAM_EDGE;
	range						= Range_Special_1H_1;

	on_equip					= Equip_1H_10;
	on_unequip					= UnEquip_1H_10;

	value						= Value_Special_1H_1;

	description					= name;
	text[0]						= NAME_Damage;									count[0] = damageTotal;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_ADDON_BONUS_1H;							count[2] = Waffenbonus_10;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_2H_Special_01(C_Item)
{
	name						= NAME_ItMw_2H_Special_01;

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_050_2h_Sword_smith_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Special_2H_1;

	damageTotal					= Damage_Special_2H_1;
	damageType					= DAM_EDGE;
	range						= Range_Special_2H_1;

	on_equip					= Equip_2H_10;
	on_unequip					= UnEquip_2H_10;

	value						= Value_Special_2H_1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_ADDON_BONUS_2H;							count[2] = Waffenbonus_10;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// *******************
// Kapitel 3 - Händler
// *******************
instance ItMw_Rapier(C_Item)
{
	name						= "Rapier";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_050_1h_Sword_Rapier_01.3ds";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_DEXTERITY; // !!!
	cond_value[2]				= Condition_Rapier;

	damageTotal					= Damage_Rapier;
	damageType					= DAM_EDGE;
	range						= Range_Rapier;

	on_equip					= Equip_1H_08;
	on_unequip					= UnEquip_1H_08;

	value						= Value_Rapier;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_08;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Rubinklinge(C_Item)
{
	name						= "Rubinklinge";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_050_1h_sword_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Rubinklinge;

	damageTotal					= Damage_Rubinklinge;
	damageType					= DAM_EDGE;
	range						= Range_Rubinklinge;

	on_equip					= Equip_1H_07;
	on_unequip					= UnEquip_1H_07;

	value						= Value_Rubinklinge;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_07;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Streitkolben(C_Item)
{
	name						= "Streitkolben";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_050_1h_mace_war_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Streitkolben;

	damageTotal					= Damage_Streitkolben;
	damageType					= DAM_BLUNT;
	range						= Range_Streitkolben;

	value						= Value_Streitkolben;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Zweihaender2(C_Item)
{
	name						= "Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_055_2h_sword_light_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Zweihaender2;

	damageTotal					= Damage_Zweihaender2;
	damageType					= DAM_EDGE;
	range						= Range_Zweihaender2;

	value						= Value_Zweihaender2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Runenschwert(C_Item)
{
	name						= "Runenschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_055_1h_sword_long_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Runenschwert;

	damageTotal					= Damage_Runenschwert;
	damageType					= DAM_EDGE;
	range						= Range_Runenschwert;

	value						= Value_Runenschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Rabenschnabel(C_Item)
{
	name						= "Rabenschnabel";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_058_1h_warhammer_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Rabenschnabel;

	damageTotal					= Damage_Rabenschnabel;
	damageType					= DAM_BLUNT;
	range						= Range_Rabenschnabel;

	value						= Value_Rabenschnabel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Schwert5(C_Item)
{
	name						= "Edles Bastardschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_058_1h_Sword_Bastard_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schwert5;

	damageTotal					= Damage_Schwert5;
	damageType					= DAM_EDGE;
	range						= Range_Schwert5;

	value						= Value_Schwert5;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Inquisitor(C_Item)
{
	name						= "Inquisitor";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_060_1h_mace_war_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Inquisitor;

	damageTotal					= Damage_Inquisitor;
	damageType					= DAM_EDGE; // !!!
	range						= Range_Inquisitor;

	value						= Value_Inquisitor;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Streitaxt2(C_Item)
{
	name						= "Streitaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_060_2h_axe_heavy_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Streitaxt2;

	damageTotal					= Damage_Streitaxt2;
	damageType					= DAM_EDGE;
	range						= Range_Streitaxt2;

	value						= Value_Streitaxt2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Zweihaender3(C_Item)
{
	name						= "Runen - Macht";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_060_2h_sword_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Zweihaender3;

	damageTotal					= Damage_Zweihaender3;
	damageType					= DAM_EDGE;
	range						= Range_Zweihaender3;

	value						= Value_Zweihaender3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// *******************
// Schmieden Kapitel 3
// *******************
instance ItMw_1H_Special_02(C_Item)
{
	name						= NAME_ItMw_1H_Special_02;

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_060_1h_Sword_smith_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Special_1H_2;

	damageTotal					= Damage_Special_1H_2;
	damageType					= DAM_EDGE;
	range						= Range_Special_1H_2;

	on_equip					= Equip_1H_10;
	on_unequip					= UnEquip_1H_10;

	value						= Value_Special_1H_2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_10;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_2H_Special_02(C_Item)
{
	name						= NAME_ItMw_2H_Special_02;

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_070_2h_Sword_smith_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Special_2H_2;

	damageTotal					= Damage_Special_2H_2;
	damageType					= DAM_EDGE;
	range						= Range_Special_2H_2;

	on_equip					= Equip_2H_10;
	on_unequip					= UnEquip_2H_10;

	value						= Value_Special_2H_2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_2H;							count[4] = Waffenbonus_10;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// *******************
// Kapitel 4 - Händler
// *******************
instance ItMw_ElBastardo(C_Item)
{
	name						= "El Bastardo";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_065_1h_sword_bastard_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_ElBastardo;

	damageTotal					= Damage_ElBastardo;
	damageType					= DAM_EDGE;
	range						= Range_ElBastardo;

	on_equip					= Equip_1H_08;
	on_unequip					= UnEquip_1H_08;

	value						= Value_ElBastardo;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_08;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Kriegshammer2(C_Item)
{
	name						= "Schwerer Kriegshammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_065_1h_warhammer_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Kriegshammer2;

	damageTotal					= Damage_Kriegshammer2;
	damageType					= DAM_BLUNT;
	range						= Range_Kriegshammer2;

	value						= Value_Kriegshammer2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Meisterdegen(C_Item)
{
	name						= "Meisterdegen";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_065_1h_SwordCane_02.3ds";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Meisterdegen;

	damageTotal					= Damage_Meisterdegen;
	damageType					= DAM_EDGE;
	range						= Range_Meisterdegen;

	on_equip					= Equip_1H_10;
	on_unequip					= UnEquip_1H_10;

	value						= Value_Meisterdegen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_10;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Folteraxt(C_Item)
{
	name						= "Folteraxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_065_2h_greataxe_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Folteraxt;

	damageTotal					= Damage_Folteraxt;
	damageType					= DAM_EDGE;
	range						= Range_Folteraxt;

	value						= Value_Folteraxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Orkschlaechter(C_Item)
{
	name						= "Orkschlächter";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_065_1h_sword_bastard_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Orkschlaechter;

	damageTotal					= Damage_Orkschlaechter;
	damageType					= DAM_EDGE;
	range						= Range_Orkschlaechter;

	value						= Value_Orkschlaechter;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Zweihaender4(C_Item)
{
	name						= "Schwerer Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_068_2h_sword_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Zweihaender4;

	damageTotal					= Damage_Zweihaender4;
	damageType					= DAM_EDGE;
	range						= Range_Zweihaender4;

	value						= Value_Zweihaender4;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Schlachtaxt(C_Item)
{
	name						= "Schlachtaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_070_2h_axe_heavy_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schlachtaxt;

	damageTotal					= Damage_Schlachtaxt;
	damageType					= DAM_EDGE;
	range						= Range_Schlachtaxt;

	value						= Value_Schlachtaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Krummschwert(C_Item)
{
	name						= "Krummschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_070_2h_sword_09.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Scimitar;

	damageTotal					= Damage_Scimitar;
	damageType					= DAM_EDGE;
	range						= Range_Scimitar;

	value						= Value_Scimitar;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Barbarenstreitaxt(C_Item)
{
	name						= "Barbarenstreitaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_075_2h_axe_heavy_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Barbarenstreitaxt;

	damageTotal					= Damage_Barbarenstreitaxt;
	damageType					= DAM_EDGE;
	range						= Range_Barbarenstreitaxt;

	value						= Value_Barbarenstreitaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Sturmbringer(C_Item) // Joly: trägt None_101_Mario_DI, aber erst auf der Dracheninsel
{
	name						= "Sturmbringer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_075_2h_sword_heavy_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Sturmbringer;

	damageTotal					= Damage_Sturmbringer;
	damageType					= DAM_EDGE;
	range						= Range_Sturmbringer;

	value						= Value_Sturmbringer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// *******************
// Schmieden Kapitel 4
// *******************
instance ItMw_1H_Special_03(C_Item)
{
	name						= NAME_ItMw_1H_Special_03;

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_075_1h_sword_smith_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Special_1H_3;

	damageTotal					= Damage_Special_1H_3;
	damageType					= DAM_EDGE;
	range						= Range_Special_1H_3;

	on_equip					= Equip_1H_10;
	on_unequip					= UnEquip_1H_10;

	value						= Value_Special_1H_3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_10;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_2H_Special_03(C_Item)
{
	name						= NAME_ItMw_2H_Special_03;

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_090_2h_sword_smith_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Special_2H_3;

	damageTotal					= Damage_Special_2H_3;
	damageType					= DAM_EDGE;
	range						= Range_Special_2H_3;

	on_equip					= Equip_2H_10;
	on_unequip					= UnEquip_2H_10;

	value						= Value_Special_2H_3;

	description					= name;
	text[0]						= NAME_Damage;									count[0] = damageTotal;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_2H;							count[4] = Waffenbonus_10;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// *******************
// Kapitel 5 - Händler
// *******************
instance ItMw_Berserkeraxt(C_Item) // Joly:Auf Dracheninsel beim Schwarzmagiernovizen
{
	name						= "Berserkeraxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_080_2h_axe_heavy_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Berserkeraxt;

	damageTotal					= Damage_Berserkeraxt;
	damageType					= DAM_EDGE;
	range						= Range_Berserkeraxt;

	value						= Value_Berserkeraxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_Drachenschneide(C_Item)
{
	name						= "Drachenschneide";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "itMw_080_2h_sword_heavy_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Drachenschneide;

	damageTotal					= Damage_Drachenschneide;
	damageType					= DAM_EDGE;
	range						= Range_Drachenschneide;

	value						= Value_Drachenschneide;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// *******************
// Schmieden Kapitel 5
// *******************
instance ItMw_1H_Special_04(C_Item)
{
	name						= NAME_ItMw_1H_Special_04;

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_090_1h_sword_smith_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Special_1H_4;

	damageTotal					= Damage_Special_1H_4;
	damageType					= DAM_EDGE;
	range						= Range_Special_1H_4;

	on_equip					= Equip_1H_10;
	on_unequip					= UnEquip_1H_10;

	value						= Value_Special_1H_4;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_10;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_2H_Special_04(C_Item)
{
	name						= NAME_ItMw_2H_Special_04;

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_110_2h_sword_smith_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Special_2H_4;

	damageTotal					= Damage_Special_2H_4;
	damageType					= DAM_EDGE;
	range						= Range_Special_2H_4;

	on_equip					= Equip_2H_10;
	on_unequip					= UnEquip_2H_10;

	value						= Value_Special_2H_4;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_2H;							count[4] = Waffenbonus_10;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// ************************
// Gesegnete Paladin-Waffen
// ************************
instance ItMw_1H_Blessed_01(C_Item)
{
	name						= "Rohe Erzklinge";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD | ITEM_MISSION;

	visual						= "itmw_030_1h_PAL_sword_bastard_RAW_01.3ds";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blessed_1H_1;

	damageTotal					= Damage_Blessed_1H_1;
	damageType					= DAM_EDGE;
	range						= Range_Blessed_1H_1;

	value						= Value_Blessed_1H_1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_1H_Blessed_02(C_Item)
{
	name						= "Gesegnete Erzklinge";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD | ITEM_MISSION;

	visual						= "ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blessed_1H_2;

	damageTotal					= Damage_Blessed_1H_2;
	damageType					= DAM_EDGE;
	range						= Range_Blessed_1H_2;

	value						= Value_Blessed_1H_2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_1H_Blessed_03(C_Item)
{
	name						= "Innos Zorn";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD | ITEM_MISSION;

	visual						= "ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blessed_1H_3;

	damageTotal					= Damage_Blessed_1H_3;
	damageType					= DAM_EDGE;
	range						= Range_Blessed_1H_3;

	value						= Value_Blessed_1H_3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_2H_Blessed_01(C_Item)
{
	name						= "Rohe Erzklinge";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blessed_2H_1;

	damageTotal					= Damage_Blessed_2H_1;
	damageType					= DAM_EDGE;
	range						= Range_Blessed_2H_1;

	value						= Value_Blessed_2H_1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_2H_Blessed_02(C_Item)
{
	name						= "Ordensschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blessed_2H_2;

	damageTotal					= Damage_Blessed_2H_2;
	damageType					= DAM_EDGE;
	range						= Range_Blessed_2H_2;

	value						= Value_Blessed_2H_2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMw_2H_Blessed_03(C_Item)
{
	name						= "Heiliger Vollstrecker";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blessed_2H_3;

	damageTotal					= Damage_Blessed_2H_3;
	damageType					= DAM_EDGE;
	range						= Range_Blessed_2H_3;

	value						= Value_Blessed_2H_3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/

/*
instance ItMw_1H_Sword_L_01(C_Item)
{
	name						= "Dolch";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_L_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Dolch;

	damageTotal					= Damage_Dolch;
	damageType					= DAM_EDGE;
	range						= RANGE_Dolch;

	value						= Value_Dolch;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_L_02(C_Item)
{
	name						= "Knüppel";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_L_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Knueppel;

	damageTotal					= Damage_Knueppel;
	damageType					= DAM_BLUNT;
	range						= Range_Knueppel;

	value						= Value_Knueppel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_L_01(C_Item)
{
	name						= "Sichel";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_L_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Sichel;

	damageTotal					= Damage_Sichel;
	damageType					= DAM_EDGE;
	range						= Range_Sichel;

	value						= Value_Sichel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_L_02(C_Item)
{
	name						= "Haumesser";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_L_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Haumesser;

	damageTotal					= Damage_Haumesser;
	damageType					= DAM_EDGE;
	range						= Range_Haumesser;

	value						= Value_Haumesser;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_L_02(C_Item)
{
	name						= "Handbeil";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_L_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Handbeil;

	damageTotal					= Damage_Handbeil;
	damageType					= DAM_EDGE;
	range						= Range_Handbeil;

	value						= Value_Handbeil;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_L_04(C_Item)
{
	name						= "Schartiges Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_L_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_RostigesSchwert;

	damageTotal					= Damage_RostigesSchwert;
	damageType					= DAM_EDGE;
	range						= Range_RostigesSchwert;

	value						= Value_RostigesSchwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_L_03(C_Item)
{
	name						= "Handaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_L_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Handaxt;

	damageTotal					= Damage_Handaxt;
	damageType					= DAM_EDGE;
	range						= Range_Handaxt;

	value						= Value_Handaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_L_05(C_Item)
{
	name						= "Keule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_L_05.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Keule;

	damageTotal					= Damage_Keule;
	damageType					= DAM_BLUNT;
	range						= Range_Keule;

	value						= Value_Keule;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_L_05(C_Item)
{
	name						= "Orkmesser";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_L_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Orkmesser;

	damageTotal					= Damage_Orkmesser;
	damageType					= DAM_EDGE;
	range						= Range_Orkmesser;

	value						= Value_Orkmesser;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_L_06(C_Item)
{
	name						= "Kurzschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_L_06.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Kurzschwert;

	damageTotal					= Damage_Kurzschwert;
	damageType					= DAM_EDGE;
	range						= Range_Kurzschwert;

	value						= Value_Kurzschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_L_04(C_Item)
{
	name						= "Alte Axt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_L_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_AlteAxt;

	damageTotal					= Damage_AlteAxt;
	damageType					= DAM_EDGE;
	range						= Range_AlteAxt;

	value						= Value_AlteAxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_L_06(C_Item)
{
	name						= "Schmiedehammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_L_06.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schmiedehammer;

	damageTotal					= Damage_Schmiedehammer;
	damageType					= DAM_BLUNT;
	range						= Range_Schmiedehammer;

	value						= Value_Schmiedehammer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_L_07(C_Item)
{
	name						= "Piratenmesser";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_L_07.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Piratenmesser;

	damageTotal					= Damage_Piratenmesser;
	damageType					= DAM_EDGE;
	range						= Range_Piratenmesser;

	value						= Value_Piratenmesser;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 2

instance ItMw_1H_Sword_L_08(C_Item)
{
	name						= "Entermesser";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_L_08.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Entermesser;

	damageTotal					= Damage_Entermesser;
	damageType					= DAM_EDGE;
	range						= Range_Entermesser;

	value						= Value_Entermesser;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_L_05(C_Item)
{
	name						= "Schiffsaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_L_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schiffsaxt;

	damageTotal					= Damage_Schiffsaxt;
	damageType					= DAM_EDGE;
	range						= Range_Schiffsaxt;

	value						= Value_Schiffsaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_L_07(C_Item)
{
	name						= "Nagelkeule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_L_07.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Nagelkeule;

	damageTotal					= Damage_Nagelkeule;
	damageType					= DAM_BLUNT;
	range						= Range_Nagelkeule;

	value						= Value_Nagelkeule;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_L_09(C_Item)
{
	name						= "Piratensäbel";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_L_09.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Piratensaebel;

	damageTotal					= Damage_Piratensaebel;
	damageType					= DAM_EDGE;
	range						= Range_Piratensaebel;

	value						= Value_Piratensaebel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_L_10(C_Item)
{
	name						= "Altes Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_L_10.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_AltesSchwert;

	damageTotal					= Damage_AltesSchwert;
	damageType					= DAM_EDGE;
	range						= Range_AltesSchwert;

	value						= Value_AltesSchwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_L_06(C_Item)
{
	name						= "Axt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_L_06.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Axt;

	damageTotal					= Damage_Axt;
	damageType					= DAM_EDGE;
	range						= Range_Axt;

	value						= Value_Axt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_L_08(C_Item)
{
	name						= "Kriegskeule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_L_08.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Kriegskeule;

	damageTotal					= Damage_Kriegskeule;
	damageType					= DAM_BLUNT;
	range						= Range_Kriegskeule;

	value						= Value_Kriegskeule;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_L_09(C_Item)
{
	name						= "Steinbrecher";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_L_09.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Steinbrecher;

	damageTotal					= Damage_Steinbrecher;
	damageType					= DAM_BLUNT;
	range						= Range_Steinbrecher;

	value						= Value_Steinbrecher;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 3

instance ItMw_1H_Sword_M_01(C_Item)
{
	name						= "Rapier";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_M_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Rapier;

	damageTotal					= Damage_Rapier;
	damageType					= DAM_EDGE;
	range						= Range_Rapier;

	value						= Value_Rapier;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_M_01(C_Item)
{
	name						= "Kriegsbeil";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_M_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Kriegsbeil;

	damageTotal					= Damage_Kriegsbeil;
	damageType					= DAM_EDGE;
	range						= Range_Kriegsbeil;

	value						= Value_Kriegsbeil;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_M_01(C_Item)
{
	name						= "Leichter Streitkolben";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_M_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_LeichterStreitkolben;

	damageTotal					= Damage_LeichterStreitkolben;
	damageType					= DAM_BLUNT;
	range						= Range_LeichterStreitkolben;

	value						= Value_LeichterStreitkolben;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_M_02(C_Item)
{
	name						= "Schildbrecher";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_M_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schildbrecher;

	damageTotal					= Damage_Schildbrecher;
	damageType					= DAM_BLUNT;
	range						= Range_Schildbrecher;

	value						= Value_Schildbrecher;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_M_02(C_Item)
{
	name						= "Säbel";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_M_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Saebel;

	damageTotal					= Damage_Saebel;
	damageType					= DAM_EDGE;
	range						= Range_Saebel;

	value						= Value_Saebel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_M_02(C_Item)
{
	name						= "Bartaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_M_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Bartaxt;

	damageTotal					= Damage_Bartaxt;
	damageType					= DAM_EDGE;
	range						= Range_Bartaxt;

	value						= Value_Bartaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_M_03(C_Item)
{
	name						= "Leichter Morgenstern";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_M_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_LeichterMorgenstern;

	damageTotal					= Damage_LeichterMorgenstern;
	damageType					= DAM_BLUNT;
	range						= Range_LeichterMorgenstern;

	value						= Value_LeichterMorgenstern;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_M_04(C_Item)
{
	name						= "Knochenbrecher";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_M_04.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Knochenbrecher;

	damageTotal					= Damage_Knochenbrecher;
	damageType					= DAM_BLUNT;
	range						= Range_Knochenbrecher;

	value						= Value_Knochenbrecher;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 3

instance ItMw_1H_Sword_M_03(C_Item)
{
	name						= "Scimitar";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_M_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Scimitar;

	damageTotal					= Damage_Scimitar;
	damageType					= DAM_EDGE;
	range						= Range_Scimitar;

	value						= Value_Scimitar;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_M_03(C_Item)
{
	name						= "Sturmaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_M_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Sturmaxt;

	damageTotal					= Damage_Sturmaxt;
	damageType					= DAM_EDGE;
	range						= Range_Sturmaxt;

	value						= Value_Sturmaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_M_05(C_Item)
{
	name						= "Streitkolben";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_M_05.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Streitkolben;

	damageTotal					= Damage_Streitkolben;
	damageType					= DAM_BLUNT;
	range						= Range_Streitkolben;

	value						= Value_Streitkolben;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_M_06(C_Item)
{
	name						= "Herzensbrecher";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_M_06.3ds";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Herzensbrecher;

	damageTotal					= Damage_Herzensbrecher;
	damageType					= DAM_BLUNT;
	range						= Range_Herzensbrecher;

	value						= Value_Herzensbrecher;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_M_04(C_Item)
{
	name						= "Breitschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_M_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Breitschwert;

	damageTotal					= Damage_Breitschwert;
	damageType					= DAM_EDGE;
	range						= Range_Breitschwert;

	value						= Value_Breitschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_M_04(C_Item)
{
	name						= "Breitaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_M_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Breitaxt;

	damageTotal					= Damage_Breitaxt;
	damageType					= DAM_EDGE;
	range						= Range_Breitaxt;

	value						= Value_Breitaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_M_07(C_Item)
{
	name						= "Morgenstern";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_M_07.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Morgenstern;

	damageTotal					= Damage_Morgenstern;
	damageType					= DAM_BLUNT;
	range						= Range_Morgenstern;

	value						= Value_Morgenstern;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_M_05(C_Item)
{
	name						= "Schädelspalter";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_M_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schaedelspalter;

	damageTotal					= Damage_Schaedelspalter;
	damageType					= DAM_EDGE;
	range						= Range_Schaedelspalter;

	value						= Value_Schaedelspalter;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 5

instance ItMw_1H_Sword_H_01(C_Item)
{
	name						= "Langschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_H_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Langschwert;

	damageTotal					= Damage_Langschwert;
	damageType					= DAM_EDGE;
	range						= Range_Langschwert;

	value						= Value_Langschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_H_01(C_Item)
{
	name						= "Kriegsaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_H_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Kriegsaxt;

	damageTotal					= Damage_Kriegsaxt;
	damageType					= DAM_EDGE;
	range						= Range_Kriegsaxt;

	value						= Value_Kriegsaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_H_01(C_Item)
{
	name						= "Streithammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_H_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Streithammer;

	damageTotal					= Damage_Streithammer;
	damageType					= DAM_BLUNT;
	range						= Range_Streithammer;

	value						= Value_Streithammer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_H_02(C_Item)
{
	name						= "Kriegsschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_H_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Kriegsschwert;

	damageTotal					= Damage_Kriegsschwert;
	damageType					= DAM_EDGE;
	range						= Range_Kriegsschwert;

	value						= Value_Kriegsschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_H_03(C_Item)
{
	name						= "Ordensschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_H_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Ordensschwert;

	damageTotal					= Damage_Ordensschwert;
	damageType					= DAM_EDGE;
	range						= Range_Ordensschwert;

	value						= Value_Ordensschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_H_02(C_Item)
{
	name						= "Doppelaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_H_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Doppelaxt;

	damageTotal					= Damage_Doppelaxt;
	damageType					= DAM_EDGE;
	range						= Range_Doppelaxt;

	value						= Value_Doppelaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_H_02(C_Item)
{
	name						= "Schwerer Streitkolben";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_H_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_SchwererStreitkolben;

	damageTotal					= Damage_SchwererStreitkolben;
	damageType					= DAM_BLUNT;
	range						= Range_SchwererStreitkolben;

	value						= Value_SchwererStreitkolben;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Sword_H_04(C_Item)
{
	name						= "Vollstrecker";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_H_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Vollstrecker;

	damageTotal					= Damage_Vollstrecker;
	damageType					= DAM_EDGE;
	range						= Range_Vollstrecker;

	value						= Value_Vollstrecker;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 6

instance ItMw_1H_Sword_H_05(C_Item)
{
	name						= "Ritterschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_H_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Ritterschwert;

	damageTotal					= Damage_Ritterschwert;
	damageType					= DAM_EDGE;
	range						= Range_Ritterschwert;

	value						= Value_Ritterschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Axe_H_03(C_Item)
{
	name						= "Söldneraxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_H_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Soeldneraxt;

	damageTotal					= Damage_Soeldneraxt;
	damageType					= DAM_EDGE;
	range						= Range_Soeldneraxt;

	value						= Value_Soeldneraxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Mace_H_03(C_Item)
{
	name						= "Schwerer Morgenstern";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_H_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_SchwererMorgenstern;

	damageTotal					= Damage_SchwererMorgenstern;
	damageType					= DAM_BLUNT;
	range						= Range_SchwererMorgenstern;

	value						= Value_SchwererMorgenstern;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 1

instance ItMw_2H_Axe_L_02(C_Item)
{
	name						= "Holzfälleraxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_L_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Holzfaelleraxt;

	damageTotal					= Damage_Holzfaelleraxt;
	damageType					= DAM_EDGE;
	range						= Range_Holzfaelleraxt;

	value						= Value_Holzfaelleraxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 2

instance ItMw_2H_Mace_L_01(C_Item)
{
	name						= "Stabkeule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Mace_L_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Stabkeule;

	damageTotal					= Damage_Stabkeule;
	damageType					= DAM_BLUNT;
	range						= Range_Stabkeule;

	value						= Value_Stabkeule;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_L_01(C_Item)
{
	name						= "Altes Bastardschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_L_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_AltesBastardschwert;

	damageTotal					= Damage_AltesBastardschwert;
	damageType					= DAM_EDGE;
	range						= Range_AltesBastardschwert;

	value						= Value_AltesBastardschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Axe_L_03(C_Item)
{
	name						= "Alte Streitaxt ";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_L_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_AlteStreitaxt;

	damageTotal					= Damage_AlteStreitaxt;
	damageType					= DAM_EDGE;
	range						= Range_AlteStreitaxt;

	value						= Value_AlteStreitaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Mace_L_02(C_Item)
{
	name						= "Alter Kriegshammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Mace_L_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_AlterKriegshammer;

	damageTotal					= Damage_AlterKriegshammer;
	damageType					= DAM_BLUNT;
	range						= Range_AlterKriegshammer;

	value						= Value_AlterKriegshammer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Mace_L_03(C_Item)
{
	name						= "Orkschläger";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Mace_L_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Orkschlaeger;

	damageTotal					= Damage_Orkschlaeger;
	damageType					= DAM_BLUNT;
	range						= Range_Orkschlaeger;

	value						= Value_Orkschlaeger;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_L_02(C_Item)
{
	name						= "Bastardschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_L_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Bastardschwert;

	damageTotal					= Damage_Bastardschwert;
	damageType					= DAM_EDGE;
	range						= Range_Bastardschwert;

	value						= Value_Bastardschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Axe_L_04(C_Item)
{
	name						= "Streitaxt ";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_L_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Streitaxt;

	damageTotal					= Damage_Streitaxt;
	damageType					= DAM_EDGE;
	range						= Range_Streitaxt;

	value						= Value_Streitaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Mace_L_04(C_Item)
{
	name						= "Trollschläger";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Mace_L_04.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Trollschlaeger;

	damageTotal					= Damage_Trollschlaeger;
	damageType					= DAM_BLUNT;
	range						= Range_Trollschlaeger;

	value						= Value_Trollschlaeger;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 3

instance ItMw_2H_Axe_M_01(C_Item)
{
	name						= "Verwitterte Langaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_M_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_VerwitterteLangaxt;

	damageTotal					= Damage_VerwitterteLangaxt;
	damageType					= DAM_EDGE;
	range						= Range_VerwitterteLangaxt;

	value						= Value_VerwitterteLangaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Mace_M_01(C_Item)
{
	name						= "Leichter Kriegshammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Mace_M_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_LeichterKriegshammer;

	damageTotal					= Damage_LeichterKriegshammer;
	damageType					= DAM_BLUNT;
	range						= Range_LeichterKriegshammer;

	value						= Value_LeichterKriegshammer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Mace_M_02(C_Item)
{
	name						= "Orkhammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Mace_M_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Orkhammer;

	damageTotal					= Damage_Orkhammer;
	damageType					= DAM_BLUNT;
	range						= Range_Orkhammer;

	value						= Value_Orkhammer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_M_02(C_Item)
{
	name						= "Schweres Bastardschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_M_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_SchweresBastardschwert;

	damageTotal					= Damage_SchweresBastardschwert;
	damageType					= DAM_EDGE;
	range						= Range_SchweresBastardschwert;

	value						= Value_SchweresBastardschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Axe_M_02(C_Item)
{
	name						= "Schwere Streitaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_M_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_SchwereStreitaxt;

	damageTotal					= Damage_SchwereStreitaxt;
	damageType					= DAM_EDGE;
	range						= Range_SchwereStreitaxt;

	value						= Value_SchwereStreitaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Mace_M_03(C_Item)
{
	name						= "Trollhammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Mace_M_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Trollhammer;

	damageTotal					= Damage_Trollhammer;
	damageType					= DAM_BLUNT;
	range						= Range_Trollhammer;

	value						= Value_Trollhammer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_M_03(C_Item)
{
	name						= "Alter Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_M_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_AlterZweihaender;

	damageTotal					= Damage_AlterZweihaender;
	damageType					= DAM_EDGE;
	range						= Damage_AlterZweihaender;

	value						= Value_AlterZweihaender;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Axe_M_03(C_Item)
{
	name						= "Alte Langaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_M_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_AlteLangaxt;

	damageTotal					= Damage_AlteLangaxt;
	damageType					= DAM_EDGE;
	range						= Range_AlteLangaxt;

	value						= Value_AlteLangaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Mace_M_04(C_Item)
{
	name						= "Kriegshammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Mace_M_04.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Kriegshammer;

	damageTotal					= Damage_Kriegshammer;
	damageType					= DAM_BLUNT;
	range						= Range_Kriegshammer;

	value						= Value_Kriegshammer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_M_04(C_Item)
{
	name						= "Orktöter";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_M_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Orktoeter;

	damageTotal					= Damage_Orktoeter;
	damageType					= DAM_EDGE;
	range						= Range_Orktoeter;

	value						= Value_Orktoeter;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 4

instance ItMw_2H_Sword_M_05(C_Item)
{
	name						= "Großschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_M_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Großschwert;

	damageTotal					= Damage_Großschwert;
	damageType					= DAM_EDGE;
	range						= Range_Großschwert;

	value						= Value_Großschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Axe_M_04(C_Item)
{
	name						= "Großaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_M_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Großaxt;

	damageTotal					= Damage_Großaxt;
	damageType					= DAM_EDGE;
	range						= Range_Großaxt;

	value						= Value_Großaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_M_06(C_Item)
{
	name						= "Trolltöter";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_M_06.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Trolltoeter;

	damageTotal					= Damage_Trolltoeter;
	damageType					= DAM_EDGE;
	range						= Range_Trolltoeter;

	value						= Value_Trolltoeter;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_M_07(C_Item)
{
	name						= "Leichter Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_M_07.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_LeichterZweihaender;

	damageTotal					= Damage_LeichterZweihaender;
	damageType					= DAM_EDGE;
	range						= Range_LeichterZweihaender;

	value						= Value_LeichterZweihaender;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Axe_M_05(C_Item)
{
	name						= "Leichte Langaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Axe_M_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_LeichteLangaxt;

	damageTotal					= Damage_LeichteLangaxt;
	damageType					= DAM_EDGE;
	range						= Range_LeichteLangaxt;

	value						= Value_LeichteLangaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Mace_M_05(C_Item)
{
	name						= "Schwerer Kriegshammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Mace_M_05.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_SchwererKriegshammer;

	damageTotal					= Damage_SchwererKriegshammer;
	damageType					= DAM_BLUNT;
	range						= Range_SchwererKriegshammer;

	value						= Value_SchwererKriegshammer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Mace_M_06(C_Item)
{
	name						= "Zermalmer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Mace_M_06.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Zermalmer;

	damageTotal					= Damage_Zermalmer;
	damageType					= DAM_BLUNT;
	range						= Range_Zermalmer;

	value						= Value_Zermalmer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_M_08(C_Item)
{
	name						= "Schlachtschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_M_08.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schlachtschwert;

	damageTotal					= Damage_Schlachtschwert;
	damageType					= DAM_EDGE;
	range						= Range_Schlachtschwert;

	value						= Value_Schlachtschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Axe_M_06(C_Item)
{
	name						= "Schlachtbeil";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_M_06.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Schlachtbeil;

	damageTotal					= Damage_Schlachtbeil;
	damageType					= DAM_EDGE;
	range						= Range_Schlachtbeil;

	value						= Value_Schlachtbeil;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_SWORD_M_09(C_Item)
{
	name						= "Witwenmacher";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_SWORD_M_09.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Witwenmacher;

	damageTotal					= Damage_Witwenmacher;
	damageType					= DAM_EDGE;
	range						= Range_Witwenmacher;

	value						= Value_Witwenmacher;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 5

instance ItMw_2H_Sword_H_01(C_Item)
{
	name						= "Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_H_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Zweihaender;

	damageTotal					= Damage_Zweihaender;
	damageType					= DAM_EDGE;
	range						= Range_Zweihaender;

	value						= Value_Zweihaender;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Axe_H_01(C_Item)
{
	name						= "Langaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_H_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Langaxt;

	damageTotal					= Damage_Langaxt;
	damageType					= DAM_EDGE;
	range						= Range_Langaxt;

	value						= Value_Langaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_H_02(C_Item)
{
	name						= "Blutschneide";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_H_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blutschneide;

	damageTotal					= Damage_Blutschneide;
	damageType					= DAM_EDGE;
	range						= Range_Blutschneide;

	value						= Value_Blutschneide;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_H_03(C_Item)
{
	name						= "Berserkerschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_H_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Berserkerschwert;

	damageTotal					= Damage_Berserkerschwert;
	damageType					= DAM_EDGE;
	range						= Range_Berserkerschwert;

	value						= Value_Berserkerschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Axe_H_02(C_Item)
{
	name						= "Berserkeraxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_H_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Berserkeraxt;

	damageTotal					= Damage_Berserkeraxt;
	damageType					= DAM_EDGE;
	range						= Range_Berserkeraxt;

	value						= Value_Berserkeraxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_H_04(C_Item)
{
	name						= "Heldenschneide";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_H_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Heldenschneide;

	damageTotal					= Damage_Heldenschneide;
	damageType					= DAM_EDGE;
	range						= Range_Heldenschneide;

	value						= Value_Heldenschneide;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_H_05(C_Item)
{
	name						= "Schwerer Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_H_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_SchwererZweihaender;

	damageTotal					= Damage_SchwererZweihaender;
	damageType					= DAM_EDGE;
	range						= Range_SchwererZweihaender;

	value						= Value_SchwererZweihaender;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Axe_H_03(C_Item)
{
	name						= "Schwere Langaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_H_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_SchwereLangaxt;

	damageTotal					= Damage_SchwereLangaxt;
	damageType					= DAM_EDGE;
	range						= Range_SchwereLangaxt;

	value						= Value_SchwereLangaxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Sword_H_06(C_Item)
{
	name						= "Drachenschneide";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_H_06.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Drachenschneide;

	damageTotal					= Damage_Drachenschneide;
	damageType					= DAM_EDGE;
	range						= Range_Drachenschneide;

	value						= Value_Drachenschneide;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 6

instance ItMw_2H_Sword_H_07(C_Item)
{
	name						= "Paladinschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_H_07.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Paladinschwert;

	damageTotal					= Damage_Paladinschwert;
	damageType					= DAM_EDGE;
	range						= Range_Paladinschwert;

	value						= Value_Paladinschwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Axe_H_04(C_Item)
{
	name						= "Drachenjägeraxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_H_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Drachenjaegeraxt;

	damageTotal					= Damage_Drachenjaegeraxt;
	damageType					= DAM_EDGE;
	range						= Range_Drachenjaegeraxt;

	value						= Value_Drachenjaegeraxt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Schmieden Common

// Schmiedewaffen Spezial

// Gesegnete Waffen

instance ItMw_1H_Blessed_01(C_Item)
{
	name						= "Schwert der Reue";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Blessed_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blessed_1H_1;

	damageTotal					= Damage_Blessed_1H_1;
	damageType					= DAM_EDGE;
	range						= Range_Blessed_1H_1;

	value						= Value_Blessed_1H_1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Blessed_02(C_Item)
{
	name						= "Schwert der Buße";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Blessed_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blessed_1H_2;

	damageTotal					= Damage_Blessed_1H_2;
	damageType					= DAM_EDGE;
	range						= Range_Blessed_1H_2;

	value						= Value_Blessed_1H_2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_1H_Blessed_03(C_Item)
{
	name						= "Schwert des Lichts";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Blessed_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blessed_1H_3;

	damageTotal					= Damage_Blessed_1H_3;
	damageType					= DAM_EDGE;
	range						= Range_Blessed_1H_3;

	value						= Value_Blessed_1H_3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Blessed_01(C_Item)
{
	name						= "Verkünder des Glaubens";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Blessed_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blessed_2H_1;

	damageTotal					= Damage_Blessed_2H_1;
	damageType					= DAM_EDGE;
	range						= Range_Blessed_2H_1;

	value						= Value_Blessed_2H_1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Blessed_02(C_Item)
{
	name						= "Bewahrer des Glaubens";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Blessed_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blessed_2H_2;

	damageTotal					= Damage_Blessed_2H_2;
	damageType					= DAM_EDGE;
	range						= Range_Blessed_2H_2;

	value						= Value_Blessed_2H_2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMw_2H_Blessed_03(C_Item)
{
	name						= "Stimme des Glaubens";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Blessed_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Blessed_2H_3;

	damageTotal					= Damage_Blessed_2H_3;
	damageType					= DAM_EDGE;
	range						= Range_Blessed_2H_3;

	value						= Value_Blessed_2H_3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

*/
