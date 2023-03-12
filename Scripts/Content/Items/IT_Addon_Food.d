/******************************************************************************************/
//	RUM //
/******************************************************************************************/

const int Value_Rum = 30;
const int Mana_Rum = 10;

const int Value_Grog = 10;
const int HP_Grog = 1;

const int Value_SchnellerHering = 30;

const int Value_LousHammer = 30;
const int Mana_LousHammer = 1;

const int Value_SchlafHammer = 60;

const int Value_FireStew = 180;
const int STR_FireStew = 1;
const int HP_FireStew = 5;
const int STR_MeatSoup = 1;

const int Value_Shellflesh = 60;
const int HP_Shellflesh = 20;
// ---------------------------------------------------------------------
//	Muschelfleisch
// ---------------------------------------------------------------------
instance ItFo_Addon_Shellflesh(C_Item)
{
	name						= "Muschelfleisch";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Meatbugflesh.3DS";
	material					= MAT_LEATHER;

	scemeName					= "FOODHUGE";
	on_state[0]					= Use_Shellflesh;

	value						= Value_Shellflesh;

	description					= name;
	text[0]						= "Saftiges Muschelfleisch";					count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Shellflesh;
	text[2]						= "Roh unbedingt genießbar";					count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_Shellflesh()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Shellflesh);
};

// -----------------------------
instance ItFo_Addon_Rum(C_Item)
{
	name						= "Rum";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Rum_02.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseRum;

	value						= Value_Rum;

	description					= "Weißer Rum";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Rum;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Rum;
};

func void UseRum()
{
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Rum);
};

// #############################################
//			Grog
// #############################################

instance ItFo_Addon_Grog(C_Item)
{
	name						= "Grog";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Rum_02.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseGrog;

	value						= Value_Grog;

	description					= "Echter Seemanns Grog";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Grog;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Grog;
};

func void UseGrog()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Grog);
};

// -----------------------------
//	Lou's Hammer (mit Manaessenz)
// -----------------------------

var int Hammer_Once; // damit der Magier sich nicht für 30 Gold superviel MANA kauft!!

instance ItFo_Addon_LousHammer(C_Item)
{
	name						= "Lou's Hammer";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Rum_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseLouHammer;

	value						= Value_LousHammer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "Wirkung          ???";						count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_LousHammer;
};

func void UseLouHammer()
{
	if (Hammer_Once == FALSE)
	{
		B_RaiseAttribute(self, ATR_MANA_MAX, Mana_LousHammer);
		Hammer_Once = TRUE;
	};
};

// -------------------------------------------------------
//	Lou's doppelter Hammer (Schlafhammer)
// --------------------------------------------------------
instance ItFo_Addon_SchlafHammer(C_Item)
{
	name						= "Doppelter Hammer";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Rum_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseSchlafHammer;

	value						= Value_SchlafHammer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "Macht den härtesten Trinker müde...";		count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_SchlafHammer;
};

func void UseSchlafHammer()
{
	if (self.attribute[ATR_HITPOINTS] > 2)
	{
		self.attribute[ATR_HITPOINTS] = (self.attribute[ATR_HITPOINTS] / 2);
	};
};

// #############################################
//			Schneller Hering
// #############################################

instance ItFo_Addon_SchnellerHering(C_Item)
{
	name						= "Schneller Hering";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Rum_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseSchnellerHering;

	value						= Value_Schnellerhering;

	description					= "Sieht gefährlich aus!";
	text[0]						= "";											count[0] = 0;
	text[1]						= "Wirkung unbekannt";							count[1] = 0;
	text[2]						= "Nebenwirkungen wahrscheinlich";				count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_SchnellerHering;
};

func void UseSchnellerHering()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		// AI_PlayAni(self, "T_MAGRUN_2_HEASHOOT");
		// AI_Wait(self,2);
		// AI_PlayAni(self, "T_HEASHOOT_2_STAND");
		// Wld_PlayEffect("spellFX_LIGHTSTAR_WHITE", self, self, 0, 0, 0, FALSE );
		Mdl_ApplyOverlayMDSTimed(self, "HUMANS_SPRINT.MDS", 120000); // 2min
	};

	Player_KnowsSchnellerHering = TRUE;
};

// -------------------------------------------------------
// ------------- Pfeffer -----------------------
// -------------------------------------------------------
instance ItFo_Addon_Pfeffer_01(C_Item)
{
	name						= "Pfefferbeutel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_LEATHER;

	value						= 100;

	description					= "Roter Tränen- Pfeffer";
	text[0]						= "Von den südlichen Inseln";					count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "VORSICHT SCHARF!";							count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -------------------------------------------------------
// Feuergeschnetzeltes mit hammer schnaps
// -------------------------------------------------------
instance ItFo_Addon_FireStew(C_Item)
{
	name						= "Feuergeschnetzeltes";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Stew.3ds";
	material					= MAT_WOOD;

	scemeName					= "RICE";
	on_state[0]					= Use_FireStew;

	value						= Value_FireStew;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Str;								count[1] = STR_FireStew;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_FireStew;
};

func void Use_FireStew()
{
	B_RaiseAttribute(self, ATR_STRENGTH, STR_FireStew);
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, HP_FireStew);

	PrintScreen(PRINT_STR_HP_BONUS, -1, 34, FONT_ScreenSmall, 2);
};

// -------------------------------------------------------
// Fleischsuppe
// -------------------------------------------------------
instance ItFo_Addon_Meatsoup(C_Item)
{
	name						= "Fleischsuppe";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_FishSoup.3ds";
	material					= MAT_WOOD;

	scemeName					= "RICE";
	on_state[0]					= Use_MeatSoup;

	value						= Value_FishSoup;

	description					= "Dampfende Fleischsuppe";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_STR;								count[1] = STR_MeatSoup;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_FishSoup;
};

func void Use_MeatSoup()
{
	var string ConcatText;
	ConcatText = ConcatStrings(NAME_Bonus_Str, IntToString(STR_MeatSoup));

	B_RaiseAttribute(self, ATR_STRENGTH, STR_MeatSoup);
	PrintScreen(ConcatText, -1, 34, FONT_ScreenSmall, 2);
};
