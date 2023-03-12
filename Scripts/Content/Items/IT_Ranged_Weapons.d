// *************************
// unbenutzte Item - Visuals
// *************************

// ItRw_Bow_War_04 // Dämonenbogen, Todbringer
// ItRw_Bow_War_03 // Sturmbogen
// ItRw_Bow_War_02 // Orkhetzer
// ItRw_Bow_War_01 // Kriegsbogen
// ItRw_Bow_Long_08 // Nimroder, Hornbogen
// ItRw_Bow_Long_07 // Armeebogen
// ItRw_Bow_Long_06 // Windbrecher
// ItRw_Bow_Long_05 // Wolfsfetzer
// ItRw_Bow_Long_04 // Eichenbogen
// ItRw_Bow_Long_03 // Weidenbogen
// ItRw_Bow_Long_02 // Heckenbogen
// ItRw_Bow_Long_01 // Langbogen
// ItRw_Bow_Small_05 // Knochenbogen
// ItRw_Bow_Small_04 // Jagdbogen
// ItRw_Bow_Small_03 // Feldbogen
// ItRw_Bow_Small_02 // Reiterbogen
// ItRw_Bow_Small_01 // Kurzbogen

// Munition

instance ItRw_Arrow(C_Item)
{
	name						= "Pfeil";

	mainflag					= ITEM_KAT_MUN;
	flags						= ITEM_BOW | ITEM_MULTI;

	visual						= "ItRw_Arrow.3ds";
	material					= MAT_WOOD;

	value						= Value_Pfeil;

	description					= name;
	// text[2]					= NAME_Damage;									count[2] = damageTotal;
	// text[3]					= NAME_Dex_needed;								count[3] = cond_value[2];

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_Bolt(C_Item)
{
	name						= "Bolzen";

	mainflag					= ITEM_KAT_MUN;
	flags						= ITEM_CROSSBOW | ITEM_MULTI;

	visual						= "ItRw_Bolt.3ds";
	material					= MAT_WOOD;

	value						= Value_Bolzen;

	description					= name;
	// text[2]					= NAME_Damage;									count[2] = damageTotal;
	// text[3]					= NAME_Dex_needed;								count[3] = cond_value[2];

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// NSC Waffen

instance ItRw_Mil_Crossbow(C_Item)
{
	name						= "Armbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	munition					= ItRw_Bolt;

	visual						= "ItRw_Mil_Crossbow.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_MilArmbrust;

	damageTotal					= Damage_MilArmbrust;
	damageType					= DAM_POINT;

	value						= Value_MilArmbrust;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_Sld_Bow(C_Item)
{
	name						= "Bogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Sld_Bow.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Sldbogen;

	damageTotal					= Damage_Sldbogen;
	damageType					= DAM_POINT;

	value						= Value_Sldbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Bögen
// Kapitel 1
instance ItRw_Bow_L_01(C_Item)
{
	name						= "Kurzbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_L_01.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Kurzbogen;

	damageTotal					= Damage_Kurzbogen;
	damageType					= DAM_POINT;

	value						= Value_Kurzbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_Bow_L_02(C_Item)
{
	name						= "Weidenbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_L_02.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Weidenbogen;

	damageTotal					= Damage_Weidenbogen;
	damageType					= DAM_POINT;

	value						= Value_Weidenbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 2
instance ItRw_Bow_L_03(C_Item)
{
	name						= "Jagdbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_M_01.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Jagdbogen;

	damageTotal					= Damage_Jagdbogen;
	damageType					= DAM_POINT;

	value						= Value_Jagdbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_Bow_L_04(C_Item)
{
	name						= "Ulmenbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_M_02.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Ulmenbogen;

	damageTotal					= Damage_Ulmenbogen;
	damageType					= DAM_POINT;

	value						= Value_Ulmenbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 3

instance ItRw_Bow_M_01(C_Item)
{
	name						= "Kompositbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_M_01.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Kompositbogen;

	damageTotal					= Damage_Kompositbogen;
	damageType					= DAM_POINT;

	value						= Value_Kompositbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_Bow_M_02(C_Item)
{
	name						= "Eschenbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_M_02.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Eschenbogen;

	damageTotal					= Damage_Eschenbogen;
	damageType					= DAM_POINT;

	value						= Value_Eschenbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 4

instance ItRw_Bow_M_03(C_Item)
{
	name						= "Langbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_M_03.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Langbogen;

	damageTotal					= Damage_Langbogen;
	damageType					= DAM_POINT;

	value						= Value_Langbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_Bow_M_04(C_Item)
{
	name						= "Buchenbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_M_04.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Buchenbogen;

	damageTotal					= Damage_Buchenbogen;
	damageType					= DAM_POINT;

	value						= Value_Buchenbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 5

instance ItRw_Bow_H_01(C_Item)
{
	name						= "Knochenbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_H_01.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Knochenbogen;

	damageTotal					= Damage_Knochenbogen;
	damageType					= DAM_POINT;

	value						= Value_Knochenbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_Bow_H_02(C_Item)
{
	name						= "Eichenbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_H_02.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Eichenbogen;

	damageTotal					= Damage_Eichenbogen;
	damageType					= DAM_POINT;

	value						= Value_Eichenbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 6

instance ItRw_Bow_H_03(C_Item)
{
	name						= "Kriegsbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_H_03.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Kriegsbogen;

	damageTotal					= Damage_Kriegsbogen;
	damageType					= DAM_POINT;

	value						= Value_Kriegsbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_Bow_H_04(C_Item)
{
	name						= "Drachenbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_H_04.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Drachenbogen;

	damageTotal					= Damage_Drachenbogen;
	damageType					= DAM_POINT;

	value						= Value_Drachenbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Armbrüste

// Kapitel 1

instance ItRw_Crossbow_L_01(C_Item)
{
	name						= "Jagdarmbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	munition					= ItRw_Bolt;

	visual						= "ItRw_Crossbow_L_01.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Jagdarmbrust;

	damageTotal					= Damage_Jagdarmbrust;
	damageType					= DAM_POINT;

	value						= Value_Jagdarmbrust;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 2

instance ItRw_Crossbow_L_02(C_Item)
{
	name						= "Leichte Armbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	munition					= ItRw_Bolt;

	visual						= "ItRw_Crossbow_L_02.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_LeichteArmbrust;

	damageTotal					= Damage_LeichteArmbrust;
	damageType					= DAM_POINT;

	value						= Value_LeichteArmbrust;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 3

instance ItRw_Crossbow_M_01(C_Item)
{
	name						= "Armbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	munition					= ItRw_Bolt;

	visual						= "ItRw_Crossbow_M_01.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Armbrust;

	damageTotal					= Damage_Armbrust;
	damageType					= DAM_POINT;

	value						= Value_Armbrust;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 4

instance ItRw_Crossbow_M_02(C_Item)
{
	name						= "Kriegsarmbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	munition					= ItRw_Bolt;

	visual						= "ItRw_Crossbow_M_02.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Kriegsarmbrust;

	damageTotal					= Damage_Kriegsarmbrust;
	damageType					= DAM_POINT;

	value						= Value_Kriegsarmbrust;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 5

instance ItRw_Crossbow_H_01(C_Item)
{
	name						= "Schwere Armbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	munition					= ItRw_Bolt;

	visual						= "ItRw_Crossbow_H_01.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_SchwereArmbrust;

	damageTotal					= Damage_SchwereArmbrust;
	damageType					= DAM_POINT;

	value						= Value_SchwereArmbrust;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// Kapitel 6

instance ItRw_Crossbow_H_02(C_Item)
{
	name						= "Drachenjägerarmbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	munition					= ItRw_Bolt;

	visual						= "ItRw_Crossbow_H_02.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Drachenjaegerarmbrust;

	damageTotal					= Damage_Drachenjaegerarmbrust;
	damageType					= DAM_POINT;

	value						= Value_Drachenjaegerarmbrust;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};
