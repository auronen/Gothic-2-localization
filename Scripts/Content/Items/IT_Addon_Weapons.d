/*

10 neue Waffen

Magierstab rot, blau, gold
Zweihandkeule, Einhandkeule(Holz, Stein)
Steinhammer(Maya TX) klein(einhand), groß(zweihand)

Sichelstab(Zweihand, Stab mit Sichelklinge)

Hackmesser(machete) Einhand - Zweihand

ItMW_Addon_Knife01 // Wolfsmesser// Razormesser// +3 Von Cavalorn
ItMW_Addon_Sichel01 // goldene Sichel + 3 // versteckt Lobart umgebung
ItMW_Addon_Stab01 // Magierstab, Stab der Feuermagier KAP1
ItMW_Addon_Stab02 // Stab der Wassermagier KAP2 Addonworld
ItMW_Addon_Stab03 // Zauberstab ab KAP1 Klosterkauf
ItMW_Addon_Stab04 // Sichelstab, Ulthar's Stab ab KAP1 Klosterkauf
ItMW_Addon_Stab05 // Goldener Zauberstab ab KAP1 Klosterkauf

ItMW_Addon_Hacker_1h_01 // Machete ab KAP1 zu kaufen +3
ItMW_Addon_Hacker_2h_01 // Große Machete ab KAP1 zu kaufen +3
ItMW_Addon_Keule_1h_01 // Keule, Windknecht finden ab kap 1
ItMW_Addon_Keule_2h_01 // Große Keule, Sturmknecht finden in Addonworld

*/

// -------------------------------------------------------
//	Addon Waffen Wolfsmesser
// -------------------------------------------------------
instance ItMW_Addon_Knife01(C_Item)
{
	name						= "Wolfsmesser";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_012_1h_Knife_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Wolfsmesser;

	damageTotal					= Damage_Wolfsmesser;
	damageType					= DAM_EDGE;
	range						= Range_Wolfsmesser;

	on_equip					= Equip_1H_03;
	on_unequip					= UnEquip_1H_03;

	value						= Value_Wolfsmesser;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_03;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMW_Addon_Stab01(C_Item)
{
	name						= "Magierstab";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	effect						= "SPELLFX_MAGESTAFF1";

	visual						= "ItMW_MageStaff_Good_2H_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Stab01;

	damageTotal					= Damage_Stab01;
	damageType					= DAM_BLUNT;
	range						= RANGE_Stab01;

	on_equip					= Equip_2H_03;
	on_unequip					= UnEquip_2H_03;

	value						= Value_Stab01;

	description					= "Stab der Feuermagier";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_2H;							count[4] = Waffenbonus_03;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMW_Addon_Stab02(C_Item)
{
	name						= "Zauberstab";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	effect						= "SPELLFX_MAGESTAFF2";

	visual						= "ItMW_MageStaff_Good_2H_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= Condition_Stab02;

	damageTotal					= Damage_Stab02;
	damageType					= DAM_BLUNT;
	range						= RANGE_Stab02;

	on_equip					= Equip_Zauberstab;
	on_unequip					= UnEquip_Zauberstab;

	value						= Value_Stab02;

	description					= name;
	text[0]						= NAME_Damage;									count[0] = damageTotal;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Mana;								count[2] = 20;
	text[3]						= NAME_Mana_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Zauberstab()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_MANA_MAX, 20);
		Npc_ChangeAttribute(self, ATR_MANA, 20);
	};
};

func void UnEquip_Zauberstab()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_MANA_MAX, - 20);

		if (self.attribute [ATR_MANA] >= 20)
		{
			Npc_ChangeAttribute(self, ATR_MANA, - 20);
		}
		else
		{
			self.attribute[ATR_MANA] = 0;
		};
	};
};

// *****************************************************
instance ItMW_Addon_Stab03(C_Item)
{
	name						= "Wasserstab";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	effect						= "SPELLFX_MAGESTAFF3";

	visual						= "ItMW_MageStaff_Blades_2H_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Stab03;

	damageTotal					= Damage_Stab03;
	damageType					= DAM_BLUNT;
	range						= RANGE_Stab03;

	on_equip					= Equip_2H_04;
	on_unequip					= UnEquip_2H_04;

	value						= Value_Stab03;

	description					= "Stab der Wassermagier";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_2H;							count[4] = Waffenbonus_04;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMW_Addon_Stab04(C_Item)
{
	name						= "Ulthar's Stab";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	effect						= "SPELLFX_MAGESTAFF4";

	visual						= "ItMW_MageStaff_Good_2H_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Stab04;

	damageTotal					= Damage_Stab04;
	damageType					= DAM_BLUNT;
	range						= RANGE_Stab04;

	on_equip					= Equip_2H_04;
	on_unequip					= UnEquip_2H_04;

	value						= Value_Stab04;

	description					= "Ulthar verzauberte diesen Stab";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_2H;							count[4] = Waffenbonus_04;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMW_Addon_Stab05(C_Item)
{
	name						= "Taifun";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	effect						= "SPELLFX_MAGESTAFF5";

	visual						= "ItMW_MageStaff_Blades_2H_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Stab05;

	damageTotal					= Damage_Stab05;
	damageType					= DAM_BLUNT;
	range						= RANGE_Stab05;

	on_equip					= Equip_2H_05;
	on_unequip					= UnEquip_2H_05;

	value						= Value_Stab05;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_2H;							count[4] = Waffenbonus_05;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMW_Addon_Hacker_1h_01(C_Item)
{
	name						= "Machete";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Machete_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Machete;

	damageTotal					= Damage_Machete;
	damageType					= DAM_EDGE;
	range						= Range_Machete;

	on_equip					= Equip_1H_03;
	on_unequip					= UnEquip_1H_03;

	value						= Value_Machete;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_03;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMW_Addon_Hacker_1h_02(C_Item)
{
	name						= "Alte Machete";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Machete_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_AltMachete;

	damageTotal					= Damage_AltMachete;
	damageType					= DAM_EDGE;
	range						= Range_AltMachete;

	on_equip					= Equip_1H_02;
	on_unequip					= UnEquip_1H_02;

	value						= Value_AltMachete;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_02;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMW_Addon_Hacker_2h_01(C_Item)
{
	name						= "Riesenmachete";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Machete_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Hacker;

	damageTotal					= Damage_Hacker;
	damageType					= DAM_EDGE;
	range						= Range_Hacker;

	on_equip					= Equip_2H_03;
	on_unequip					= UnEquip_2H_03;

	value						= Value_Hacker;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_2H;							count[4] = Waffenbonus_03;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
instance ItMW_Addon_Hacker_2h_02(C_Item)
{
	name						= "Alte Riesenmachete";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Machete_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_AltHacker;

	damageTotal					= Damage_AltHacker;
	damageType					= DAM_EDGE;
	range						= Range_AltHacker;

	on_equip					= Equip_2H_02;
	on_unequip					= UnEquip_2H_02;

	value						= Value_AltHacker;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_2H;							count[4] = Waffenbonus_02;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMW_Addon_Keule_1h_01(C_Item)
{
	name						= "Windknecht";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMW_Club_1H_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Windknecht;

	damageTotal					= Damage_Windknecht;
	damageType					= DAM_BLUNT;
	range						= RANGE_Windknecht;

	on_equip					= UnEquip_1H_10; // MALUS WAFFE MUSS umgekehrt sein.
	on_unequip					= Equip_1H_10; // !!!

	value						= Value_Windknecht;

	description					= name;
	text[0]						= NAME_Damage;									count[0] = damageTotal;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_ADDON_MALUS_1H;							count[2] = Waffenbonus_10;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMW_Addon_Keule_2h_01(C_Item) // Sturmknecht 2h Holzkeule
{
	name						= "Sturmknecht";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMW_Club_2H_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Sturmknecht;

	damageTotal					= Damage_Sturmknecht;
	damageType					= DAM_BLUNT;
	range						= RANGE_Sturmknecht;

	on_equip					= UnEquip_2H_10; // MALUS WAFFE MUSS umgekehrt sein.
	on_unequip					= Equip_2H_10; // erhöhen

	value						= Value_Sturmknecht;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_MALUS_2H;							count[4] = Waffenbonus_10;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_FrancisDagger_Mis(C_Item)
{
	name						= "Guter Dolch";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD | ITEM_MISSION;

	visual						= "Itmw_005_1h_dagger_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_VLKDolch;

	damageTotal					= Damage_VLKDolch;
	damageType					= DAM_EDGE;
	range						= RANGE_VLKDolch;

	on_equip					= Equip_1H_05;
	on_unequip					= UnEquip_1H_05;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_ADDON_BONUS_1H;							count[4] = Waffenbonus_05;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_RangerStaff_Addon(C_Item)
{
	name						= "Kampfstab des 'Rings des Wassers'";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_020_2h_Nov_Staff_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_RangerStaff;

	damageTotal					= Damage_RangerStaff;
	damageType					= DAM_BLUNT;
	range						= RANGE_RangerStaff;

	value						= Value_RangerStaff;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//*********************************************************

instance ItMw_Addon_PIR2hAxe(C_Item)
{
	name						= "Plankenbrecher";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_070_2h_axe_heavy_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_PIR2hAxe;

	damageTotal					= Damage_PIR2hAxe;
	damageType					= DAM_EDGE;
	range						= Range_PIR2hAxe;

	value						= Value_PIR2hAxe;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//*********************************************************
instance ItMw_Addon_PIR2hSword(C_Item)
{
	name						= "Enterschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_070_2h_sword_09.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_PIR2hSword;

	damageTotal					= Damage_PIR2hSword;
	damageType					= DAM_EDGE;
	range						= Range_PIR2hAxe;

	value						= Value_PIR2hSword;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//*********************************************************
instance ItMw_Addon_PIR1hAxe(C_Item)
{
	name						= "Enteraxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_030_1h_axe_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_PIR1hAxe;

	damageTotal					= Damage_PIR1hAxe;
	damageType					= DAM_EDGE;
	range						= Range_PIR1hAxe;

	value						= Value_PIR1hAxe;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//*********************************************************
instance ItMw_Addon_PIR1hSword(C_Item)
{
	name						= "Entermesser";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_030_1h_sword_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_PIR1hSword;

	damageTotal					= Damage_PIR1hSword;
	damageType					= DAM_EDGE;
	range						= Range_PIR1hSword;

	value						= Value_PIR1hSword;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
instance ItMw_Addon_BanditTrader(C_Item)
{
	name						= "Degen der Banditen";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_018_1h_SwordCane_01.3ds";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_VLKSchwert;

	damageTotal					= Damage_VLKSchwert;
	damageType					= DAM_EDGE;
	range						= RANGE_VLKSchwert;

	value						= Value_BanditTrader;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "Der Buchstabe 'F.' ist in den Knauf geritzt.";count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *******************
// Skinenrs Waffe
// *******************
instance ItMw_Addon_Betty(C_Item)
{
	name						= "Betty";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE | ITEM_MISSION;

	visual						= "ItMw_065_1h_sword_bastard_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_ElBastardo;

	damageTotal					= Damage_Betty;
	damageType					= DAM_EDGE;
	range						= Range_ElBastardo;

	value						= Value_Betty;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

////////////////////////////////////////////////////////////////////////////////
//
//	Magische Waffen
//

instance ItRw_Addon_MagicArrow(C_Item)
{
	name						= "Magischer Pfeil";

	mainflag					= ITEM_KAT_MUN;
	flags						= ITEM_BOW | ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ARROW";

	visual						= "ItRw_Arrow.3ds";
	material					= MAT_WOOD;

	// FIXME_Noki: Werte
	value						= Value_Pfeil;

	description					= name;
	//	text[0]					= "";											count[0] = ;
	//	text[1]					= "";											count[1] = ;
	//	text[2]					= NAME_Damage;									count[2] = damageTotal;
	//	text[3]					= NAME_Dex_needed;								count[3] = cond_value[2];
	//	text[4]					= "";											count[4] = ;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_Addon_FireArrow(C_Item)
{
	name						= "Feuerpfeil";

	mainflag					= ITEM_KAT_MUN;
	flags						= ITEM_BOW | ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_FIREARROW";

	visual						= "ItRw_Arrow.3ds";
	material					= MAT_WOOD;

	// FIXME_Noki: Werte
	value						= Value_Pfeil;

	description					= name;
	//	text[0]					= "";											count[0] = ;
	//	text[1]					= "";											count[1] = ;
	//	text[2]					= NAME_Damage;									count[2] = damageTotal;
	//	text[3]					= NAME_Dex_needed;								count[3] = cond_value[2];
	//	text[4]					= "";											count[4] = ;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_Addon_MagicBow(C_Item)
{
	name						= "Magischer Bogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_BOW";
	munition					= ItRw_Addon_MagicArrow;

	visual						= "ItRw_Bow_H_04.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_MagicBow;

	damageTotal					= Damage_MagicBow;
	damageType					= DAM_MAGIC;

	value						= Value_MagicBow;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_Addon_FireBow(C_Item)
{
	name						= "Feuerbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_FIREBOW";
	munition					= ItRw_Addon_FireArrow;

	visual						= "ItRw_Bow_H_04.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_FireBow;

	damageTotal					= Damage_FireBow;
	damageType					= DAM_MAGIC;

	value						= Value_FireBow;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

////////////////////////////////////////////////////////////////////////////////

instance ItRw_Addon_MagicBolt(C_Item)
{
	name						= "Magischer Bolzen";

	mainflag					= ITEM_KAT_MUN;
	flags						= ITEM_CROSSBOW | ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_BOLT";

	visual						= "ItRw_Bolt.3ds";
	material					= MAT_WOOD;

	value						= Value_Bolzen;

	description					= name;
	//	text[0]					= "";											count[0] = ;
	//	text[1]					= "";											count[1] = ;
	//	text[2]					= NAME_Damage;									count[2] = damageTotal;
	//	text[3]					= NAME_Dex_needed;								count[3] = cond_value[2];
	//	text[4]					= "";											count[4] = ;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_Addon_MagicCrossbow(C_Item)
{
	name						= "Magische Armbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_CROSSBOW";
	munition					= ItRw_Addon_MagicBolt;

	visual						= "ItRw_Crossbow_H_01.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_MagicCrossbow;

	damageTotal					= Damage_MagicCrossbow;
	damageType					= DAM_MAGIC;

	value						= Value_MagicCrossbow;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};
