// ************************************************************************************************
// Wirkung und Kosten von Tränken
// ************************************************************************************************

const int Value_HpEssenz = 25; const int HP_Essenz = 50;
const int Value_HpExtrakt = 35; const int HP_Extrakt = 70;
const int Value_HpElixier = 50; const int HP_Elixier = 100;

const int Value_ManaEssenz = 25; const int Mana_Essenz = 50;
const int Value_ManaExtrakt = 40; const int Mana_Extrakt = 75;
const int Value_ManaElixier = 60; const int Mana_Elixier = 100;

const int Value_StrElixier = 800; const int STR_Elixier = 3;
const int Value_DexElixier = 800; const int DEX_Elixier = 3;
const int Value_HpMaxElixier = 1500; const int HPMax_Elixier = 20;
const int Value_ManaMaxElixier = 1500; const int ManaMax_Elixier = 5;
const int Value_MegaDrink = 1800; const int STRorDEX_MegaDrink = 15; // Joly: MegaBoost am Ende des Spiels!!!!!!!!

const int Value_Speed = 200; const int Time_Speed = 300000; // 5 min

// ADDON
const int Value_ManaTrunk = 200;
const int Value_HpTrunk = 150;

/******************************************************************************************/
//	MANATRÄNKE //
/******************************************************************************************/
instance ItPo_Mana_01(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_MANAPOTION";

	visual						= "ItPo_Mana_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Mana_01;

	value						= Value_ManaEssenz;

	description					= NAME_ManaPotion1;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Essenz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaEssenz;
};

func void UseItPo_Mana_01()
{
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Essenz);
};

/******************************************************************************************/
instance ItPo_Mana_02(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_MANAPOTION";

	visual						= "ItPo_Mana_02.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Mana_02;

	value						= Value_ManaExtrakt;

	description					= NAME_ManaPotion2;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Extrakt;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaExtrakt;
};

func void UseItPo_Mana_02()
{
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Extrakt);
};

/******************************************************************************************/
instance ItPo_Mana_03(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_MANAPOTION";

	visual						= "ItPo_Mana_03.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Mana_03;

	value						= Value_ManaElixier;

	description					= NAME_ManaPotion3;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Elixier;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaElixier;
};

func void UseItPo_Mana_03()
{
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Elixier);
};

/******************************************************************************************/
//	HEILTRÄNKE //
/******************************************************************************************/
instance ItPo_Health_01(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_HEALTHPOTION";

	visual						= "ItPo_Health_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Health_01;

	value						= Value_HpEssenz;

	description					= NAME_HealthPotion1;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Essenz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpEssenz;
};

func void UseItPo_Health_01()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Essenz);
};

/******************************************************************************************/
instance ItPo_Health_02(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_HEALTHPOTION";

	visual						= "ItPo_Health_02.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Health_02;

	value						= Value_HpExtrakt;

	description					= NAME_HealthPotion2;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Extrakt;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpExtrakt;
};

func void UseItPo_Health_02()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Extrakt);
};

/******************************************************************************************/
instance ItPo_Health_03(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_HEALTHPOTION";

	visual						= "ItPo_Health_03.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Health_03;

	value						= Value_HpElixier;

	description					= NAME_HealthPotion3;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Elixier;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpElixier;
};

func void UseItPo_Health_03()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Elixier);
};

/******************************************************************************************/
// TRÄNKE FÜR PERMANENTE ATTRIBUT-ÄNDERUNGEN!
/******************************************************************************************/
instance ItPo_Perm_STR(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItPo_Perm_STR.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Perm_STR;

	value						= Value_StrElixier;

	description					= NAME_Str_Permanent;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Str;								count[1] = STR_Elixier;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_StrElixier;
};

func void UseItPo_Perm_STR()
{
	B_RaiseAttribute(self, ATR_STRENGTH, STR_Elixier);
};

/******************************************************************************************/
instance ItPo_Perm_DEX(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItPo_Perm_DEX.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Perm_DEX;

	value						= Value_DexElixier;

	description					= NAME_Dex_Permanent;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Dex;								count[1] = DEX_Elixier;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_DexElixier;
};

func void UseItPo_Perm_DEX()
{
	B_RaiseAttribute(self, ATR_DEXTERITY, DEX_Elixier);
};

/******************************************************************************************/
instance ItPo_Perm_Health(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_HEALTHPOTION";

	visual						= "ItPo_Perm_Health.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Perm_Health;

	value						= Value_HpMaxElixier;

	description					= NAME_HealthPermanent;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HpMax;								count[1] = HPMax_Elixier;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpMaxElixier;
};

func void UseItPo_Perm_Health()
{
	B_RaiseAttribute(self, ATR_HITPOINTS_MAX, HPMax_Elixier);
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HPMax_Elixier);
};

/******************************************************************************************/
instance ItPo_Perm_Mana(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_MANAPOTION";

	visual						= "ItPo_Perm_Mana.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Perm_Mana;

	value						= Value_ManaMaxElixier;

	description					= NAME_ManaPermanent;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_ManaMax;							count[1] = ManaMax_Elixier;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaMaxElixier;
};

func void UseItPo_Perm_Mana()
{
	B_RaiseAttribute(self, ATR_MANA_MAX, ManaMax_Elixier);
	Npc_ChangeAttribute(self, ATR_MANA, ManaMax_Elixier);
};

/******************************************************************************************/
//	SPEED-POTIONS //
/******************************************************************************************/
instance ItPo_Speed(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItPo_Speed.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Speed;

	value						= Value_Speed;

	description					= NAME_Speed_Potion;
	text[0]						= "";											count[0] = 0;
	text[1]						= "Ermöglicht kurzzeitiges Sprinten ";			count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= NAME_Duration;								count[3] = Time_Speed / 60000;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseItPo_Speed()
{
	Mdl_ApplyOverlayMDSTimed(self, "HUMANS_SPRINT.MDS", Time_Speed);
};

/******************************************************************************************/
//	MegaDrink Kapitel 6 //
/******************************************************************************************/

instance ItPo_MegaDrink(C_Item) // Joly: Megatrank aus Dracheneiern auf der Dracheninsel -> Kapitel 6 kurz vor´m Endgegner
{
	name						= "Embarla Firgasto";

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItPo_Perm_Mana.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_MegaDrink;

	value						= Value_MegaDrink;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Wirkung unbekannt";							count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseItPo_MegaDrink()
{
	if (self.attribute[ATR_STRENGTH] < self.attribute[ATR_DEXTERITY])
	{
		B_RaiseAttribute(self, ATR_DEXTERITY, STRorDEX_MegaDrink);
	}
	else
	{
		B_RaiseAttribute(self, ATR_STRENGTH, STRorDEX_MegaDrink);
	};

	Npc_ChangeAttribute(self, ATR_MANA, - ATR_MANA); // Joly: gemäß des Rezeptes
	Snd_Play("DEM_Warn");
};
