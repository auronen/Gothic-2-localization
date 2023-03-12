const int Value_Dragonegg = 200; // Joly: nicht ändern
const int Value_OrcEliteRing = 130; // Joly: nicht ändern
/******************************************************************************************/
// Angars Amulett
/******************************************************************************************/
instance ItAm_Mana_Angar_MIS(C_Item)
{
	name						= NAME_Amulett;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET | ITEM_MISSION;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItAm_Mana_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItAm_Mana_Angar;
	on_unequip					= UnEquip_ItAm_Mana_Angar;

	value						= Value_Am_Mana;

	description					= "Angars magisches Amulett";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Mana;								count[2] = 10;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
};

func void Equip_ItAm_Mana_Angar()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + Am_Mana;
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + Am_Mana;
};

func void UnEquip_ItAm_Mana_Angar()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - Am_Mana;
	if (self.attribute[ATR_MANA] > (Am_Mana))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - Am_Mana;
	}
	else
	{
		self.attribute[ATR_MANA] = 0;
	};
};

//**************************************************************
//	Ferros Schwert
//**************************************************************

instance ItMW_1H_FerrosSword_Mis(C_Item)
{
	name						= "Feros Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD | ITEM_MISSION;

	visual						= "ItMw_060_1h_Sword_smith_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Special_1H_2;

	damageTotal					= Damage_Special_1H_2;
	damageType					= DAM_EDGE;
	range						= Range_Special_1H_2;

	value						= Value_Special_1H_2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItMi_KerolothsGeldbeutel_MIS(C_Item)
{
	name						= "Keroloth´s Lederbeutel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_METAL;

	scemeName					= "MAPSEALED";
	on_state[0]					= UseKerolothsGeldbeutel;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseKerolothsGeldbeutel()
{
	CreateInvItems(self, ItMi_Gold, 300);
	CreateInvItems(self, ItMi_KerolothsGeldbeutelLeer_MIS, 1);
	Print(PRINT_KerolothsGeldBeutel);
	Snd_Play("Geldbeutel");
};

instance ItMi_KerolothsGeldbeutelLeer_MIS(C_Item)
{
	name						= "Keroloth´s Lederbeutel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_METAL;

	// scemeName				= "MAPSEALED";
	// on_state[0]				= UseKerolothsGeldbeutel;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRw_SengrathsArmbrust_MIS(C_Item)
{
	name						= "Sengraths Armbrust";

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

// Tabins Lurkerhäute von Engrom

instance ItAt_TalbinsLurkerSkin(C_Item)
{
	name						= "Lurkerhaut";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItAt_LurkerSkin.3DS";
	material					= MAT_LEATHER;

	value						= Value_ReptileSkin;

	description					= name;
	text[0]						= "Im Innern ist der Name ´Talbin´ eingebrand";	count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// ---------------------------------------------------------------------
//	Drachen-Ei (für DJG only Ambient auftrag)
// ---------------------------------------------------------------------
instance ItAt_DragonEgg_MIS(C_ITEM)
{
	name						= "Drachen-Ei";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItAt_DragonEgg.3ds";
	material					= MAT_LEATHER;

	value						= Value_Dragonegg;

	description					= name;
	text[0]						= "Das Ei ist warm und von innen";				count[0] = 0;
	text[1]						= "hört man leises Kratzen";					count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// ---------------------------------------------------------------------
//	OrcEliteRing (für PAL only Ambient auftrag)
// ---------------------------------------------------------------------

instance ItRi_OrcEliteRing(C_Item)
{
	name						= "Ring der orkischen Kriegsherren";

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_MISSION | ITEM_RING | ITEM_MULTI; // Joly: Muß so bleiben, sonst XP und Gold Exploit (Lord Hagen die Dinger bringen!)

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRi_Str_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_OrcEliteRing;
	on_unequip					= UnEquip_OrcEliteRing;

	value						= Value_OrcEliteRing;

	description					= name;
	text[0]						= "Der Ring ist rauh und strahlt eine";			count[0] = 0;
	text[1]						= "seltsame Kälte aus";							count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_OrcEliteRing()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, - 20);
	Print(PRINT_OrcEliteRingEquip);
};

func void UnEquip_OrcEliteRing()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, + 20);
};

/******************************************************************************************/

var int Neoras_SCUsedDragonEggDrink;
instance ItPo_DragonEggDrinkNeoras_MIS(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItPo_Perm_STR.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= Use_DragonEggDrinkNeoras;

	value						= Value_HpElixier;

	description					= "Trank aus Dracheneisekret";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Wirkung unbekannt";							count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_DragonEggDrinkNeoras()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Elixier);
	B_RaiseAttribute(self, ATR_STRENGTH, + 3);
	Snd_Play("DEM_Warn");
	Neoras_SCUsedDragonEggDrink = TRUE;
};

//////////////////////////////////////////////////////////////////////////////
//
//	MAP Der Orcelite
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_Map_Orcelite_MIS(C_Item)
{
	name						= "Kriegskarte der Orks"; //

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Map_NewWorld_Orcelite_MIS;

	value						= 350;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

var int Use_Map_NewWorld_Orcelite_MIS_OneTime;
func void Use_Map_NewWorld_Orcelite_MIS()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_Orcelite_MIS);
	};

	var int Document;
	Document = Doc_CreateMap();
	Doc_SetPages(Document, 1);
	Doc_SetPage(Document, 0, "Map_NewWorld_Orcelite.tga", TRUE); // TRUE = scale to fullscreen
	Doc_SetLevel(Document, "NewWorld\NewWorld.zen");
	Doc_SetLevelCoords(Document, -28000, 50500, 95500, -42500);
	Doc_Show(Document);

	if ((Use_Map_NewWorld_Orcelite_MIS_OneTime == FALSE)
	&& (MIS_KillOrkOberst != 0))
	{
		B_LogEntry(TOPIC_OrcElite, TOPIC_OrcElite_8);
		Use_Map_NewWorld_Orcelite_MIS_OneTime = TRUE;
	};
};

//////////////////////////////////////////////////////////////////////////////
//
//	Caves Map
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_Map_Caves_MIS(C_Item)
{
	name						= "Die Höhlen von Khorinis"; //

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Map_NewWorld_Caves_MIS;

	value						= 200;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_Map_NewWorld_Caves_MIS()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_Caves_MIS);
	};

	var int Document;
	Document = Doc_CreateMap();
	Doc_SetPages(Document, 1);
	Doc_SetPage(Document, 0, "Map_NewWorld_Caves.tga", TRUE); // TRUE = scale to fullscreen
	Doc_SetLevel(Document, "NewWorld\NewWorld.zen");
	Doc_SetLevelCoords(Document, -28000, 50500, 95500, -42500);
	Doc_Show(Document);
};
