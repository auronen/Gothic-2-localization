/******************************************************************************************/
//	Trank der Geistesveränderung (unwissend zusammengebraut) //
/******************************************************************************************/
instance ItPo_Addon_Geist_01(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItPo_Perm_STR.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Geist_01;

	value						= 300;

	description					= "Trank der Geistesveränderung";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Vor der Anwendung sollte man sich ABSICHERN!";count[2] = 0;
	text[3]						= "Kann den Verstand derbe beeinflußen ";		count[3] = 0;
	text[4]						= "oder den Anwender töten";					count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaEssenz;
};

func void UseItPo_Geist_01()
{
	self.attribute[ATR_HITPOINTS] = (self.attribute[ATR_HITPOINTS] - 1000);
};

/******************************************************************************************/
//	Trank der Geistesveränderung (wissend zusammengebraut) //
/******************************************************************************************/
instance ItPo_Addon_Geist_02(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItPo_Perm_STR.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Geist_02;

	value						= 300;

	description					= "Trank der Geistesveränderung";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Vor der Anwendung sollte man sich ABSICHERN!";count[2] = 0;
	text[3]						= "Kann den Verstand derbe beeinflußen ";		count[3] = 0;
	text[4]						= "oder den Anwender töten";					count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaEssenz;
};

func void UseItPo_Geist_02()
{
	if (Npc_IsPlayer(self))
	{
		B_GivePlayerXP(XP_Ambient * 5);
	};
};

/******************************************************************************************/
instance ItPo_Health_Addon_04(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_HEALTHPOTION";

	visual						= "ItPo_Health_03.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Health_04;

	value						= Value_HpTrunk;

	description					= "Reine Lebensenergie";
	// text[1]					= NAME_Bonus_HP;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Vollständige Regeneration";					count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpTrunk;
};

func void UseItPo_Health_04()
{
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
};

/******************************************************************************************/
instance ItPo_Mana_Addon_04(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_MANAPOTION";

	visual						= "ItPo_Mana_03.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Mana_04;

	value						= Value_ManaTrunk;

	description					= "Reines Mana";
	// text[1]					= NAME_Bonus_Mana;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Vollständige Mana - Regeneration";			count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaTrunk;
};

func void UseItPo_Mana_04()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
};
