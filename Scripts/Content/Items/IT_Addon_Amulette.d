// ------------------------------------------------------------------------------------------
// Amulette
// ------------------------------------------------------------------------------------------
// Constanten

const int Value_ItAm_Addon_Franco = 1200;
const int HP_ItAm_Addon_Franco = 40;
const int STR_Franco = 4;
const int DEX_Franco = 4;
// ------------------------------------------------------------------------------------------
const int Value_ItRi_Addon_Health_01 = 400;
const int Value_ItAm_Addon_Health = 800;

const int Value_ItRi_Addon_Mana_01 = 1000;
const int Value_ItAm_Addon_Mana = 2000;

const int Value_ItRi_Addon_STR_01 = 500;
const int Value_ItAm_Addon_STR = 1000;

// ------------------------------------------------------------------------------------------
//	Artefakt Set der Heiler
// ------------------------------------------------------------------------------------------
const int HP_Ring_Solo_Bonus = 20; // EIN Ring alleine
const int HP_Ring_Double_Bonus = 60; // ZWEITER RING

const int HP_Amulett_Solo_Bonus = 40; // Amulett alleine
const int HP_Amulett_EinRing_Bonus = 80; // wenn schon ein Ring equipped ist
const int HP_Amulett_Artefakt_Bonus = 160; // wenn schon beide Ringe equipped sind

// ------------------------------------------------------------------------------------------
//	Artefakt Set der Priester
// ------------------------------------------------------------------------------------------
const int MA_Ring_Solo_Bonus = 5; // EIN Ring alleine
const int MA_Ring_Double_Bonus = 15; // ZWEITER RING

const int MA_Amulett_Solo_Bonus = 10; // Amulett alleine
const int MA_Amulett_EinRing_Bonus = 20; // wenn schon ein Ring equipped ist
const int MA_Amulett_Artefakt_Bonus = 40; // wenn schon beide Ringe equipped sind

// ------------------------------------------------------------------------------------------
//	Artefakt Set der Krieger
// ------------------------------------------------------------------------------------------

const int STR_Ring_Solo_Bonus = 5; // EIN Ring alleine
const int STR_Ring_Double_Bonus = 15; // ZWEITER RING

const int STR_Amulett_Solo_Bonus = 10; // Amulett alleine
const int STR_Amulett_EinRing_Bonus = 20; // wenn schon ein Ring equipped ist
const int STR_Amulett_Artefakt_Bonus = 40; // wenn schon beide Ringe equipped sind

// ------------------------------------------------------------------------------------------
// Items
// ------------------------------------------------------------------------------------------

// ------------------------------------------------------------------------------------------
// Franco's Amulett
// ------------------------------------------------------------------------------------------
instance ItAm_Addon_Franco(C_Item)
{
	name						= NAME_Amulett;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItAm_Hp_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItAm_Addon_Franco;
	on_unequip					= UnEquip_ItAm_Addon_Franco;

	value						= Value_ItAm_Addon_Franco;

	description					= "Franco's Amulett";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Str;								count[2] = STR_FRANCO;
	text[3]						= NAME_Bonus_Dex;								count[3] = DEX_FRANCO;
	text[4]						= NAME_Bonus_HP;								count[4] = HP_ItAm_Addon_Franco;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
};

func void Equip_ItAm_Addon_Franco()
{
	self.attribute[ATR_STRENGTH] += STR_FRANCO;
	self.attribute[ATR_DEXTERITY] += DEX_FRANCO;
	self.attribute[ATR_HITPOINTS_MAX] += HP_ItAm_Addon_Franco;
	self.attribute[ATR_HITPOINTS] += HP_ItAm_Addon_Franco;
};

func void UnEquip_ItAm_Addon_Franco()
{
	self.attribute[ATR_STRENGTH] -= STR_FRANCO;
	self.attribute[ATR_DEXTERITY] -= DEX_FRANCO;
	self.attribute[ATR_HITPOINTS_MAX] -= HP_ItAm_Addon_Franco;

	if (self.attribute[ATR_HITPOINTS] > (HP_ItAm_Addon_Franco + 2))
	{
		self.attribute [ATR_HITPOINTS] -= HP_ItAm_Addon_Franco;
	}
	else
	{
		self.attribute [ATR_HITPOINTS] = 2;
	};
};

// ------------------------------------------------------------------------------------------
// Kumulatives Lebensenergie Amulett (Maya) Health
// ------------------------------------------------------------------------------------------
instance ItAm_Addon_Health(C_Item) // Balken Eingang zur Mine
{
	name						= NAME_Amulett;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItAm_Hp_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItAm_Addon_Health;
	on_unequip					= UnEquip_ItAm_Addon_Health;

	value						= Value_ItAm_Addon_Health;

	description					= "Amulett der Heiler";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_HP;								count[2] = HP_Amulett_Solo_Bonus;
	text[3]						= PRINT_Addon_KUMU_01;							count[3] = 0;
	text[4]						= PRINT_Addon_KUMU_02;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
};

func void Equip_ItAm_Addon_Health()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_HP_ArtefaktValue();

	HP_Amulett_Equipped = TRUE;

	NewValue = C_HP_ArtefaktValue();

	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + (NewValue - OldValue);
};

func void UnEquip_ItAm_Addon_Health()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_HP_ArtefaktValue();

	HP_Amulett_Equipped = FALSE;

	NewValue = C_HP_ArtefaktValue();

	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + (NewValue - OldValue);
};

// ------------------------------------------------------------------------------------------
// Kumulativer Lebensenergie Ring (Maya) Health
// ------------------------------------------------------------------------------------------
instance ItRi_Addon_Health_01(C_Item) // Entrance Ruine
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Total_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Addon_Health_01;
	on_unequip					= UnEquip_ItRi_Addon_Health_01;

	value						= Value_ItRi_Addon_Health_01;

	description					= "Ring der Heiler";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_HP;								count[2] = HP_Ring_Solo_Bonus;
	text[3]						= PRINT_Addon_KUMU_01;							count[3] = 0;
	text[4]						= PRINT_Addon_KUMU_02;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Addon_Health_01()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_HP_ArtefaktValue();

	HP_Ring_1_Equipped = TRUE;

	NewValue = C_HP_ArtefaktValue();

	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + (NewValue - OldValue);
};

func void UnEquip_ItRi_Addon_Health_01()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_HP_ArtefaktValue();

	HP_Ring_1_Equipped = FALSE;

	NewValue = C_HP_ArtefaktValue();

	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + (NewValue - OldValue);
	// aktuelle Hitpoints werden nicht gesteigert. (Sonst Heilmaschine)
};

// ---------------------------------------------------------------------------------------------------------
instance ItRi_Addon_Health_02(C_Item) // Höhle zum Canyon
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Total_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Addon_Health_02;
	on_unequip					= UnEquip_ItRi_Addon_Health_02;

	value						= Value_ItRi_Addon_Health_01;

	description					= "Ring der Heiler";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_HP;								count[2] = HP_Ring_Solo_Bonus;
	text[3]						= PRINT_Addon_KUMU_01;							count[3] = 0;
	text[4]						= PRINT_Addon_KUMU_02;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Addon_Health_02()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_HP_ArtefaktValue();

	HP_Ring_2_Equipped = TRUE;

	NewValue = C_HP_ArtefaktValue();

	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + (NewValue - OldValue);
};

func void UnEquip_ItRi_Addon_Health_02()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_HP_ArtefaktValue();

	HP_Ring_2_Equipped = FALSE;

	NewValue = C_HP_ArtefaktValue();

	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + (NewValue - OldValue);
};

// ------------------------------------------------------------------------------------------
// Kumulatives Mana Amulett (Maya) MANA
// ------------------------------------------------------------------------------------------
instance ItAm_Addon_MANA(C_Item) // Joly: verteilt RAKEPLACE[19]
{
	name						= NAME_Amulett;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItAm_Hp_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItAm_Addon_MANA;
	on_unequip					= UnEquip_ItAm_Addon_MANA;

	value						= Value_ItAm_Addon_MANA;

	description					= "Amulett der Priester";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Mana;								count[2] = MA_Amulett_Solo_Bonus;
	text[3]						= PRINT_Addon_KUMU_01;							count[3] = 0;
	text[4]						= PRINT_Addon_KUMU_02;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
};

func void Equip_ItAm_Addon_MANA()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_MA_ArtefaktValue();

	MA_Amulett_Equipped = TRUE;

	NewValue = C_MA_ArtefaktValue();

	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + (NewValue - OldValue);
};

func void UnEquip_ItAm_Addon_MANA()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_MA_ArtefaktValue();

	MA_Amulett_Equipped = FALSE;

	NewValue = C_MA_ArtefaktValue();

	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + (NewValue - OldValue);
};

// ------------------------------------------------------------------------------------------
// Kumulativer Mana Ring (Maya)
// ------------------------------------------------------------------------------------------
instance ItRi_Addon_MANA_01(C_Item) // Bloodhound mine
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Total_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Addon_MANA_01;
	on_unequip					= UnEquip_ItRi_Addon_MANA_01;

	value						= Value_ItRi_Addon_MANA_01;

	description					= "Ring der Priester";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Mana;								count[2] = MA_Ring_Solo_Bonus;
	text[3]						= PRINT_Addon_KUMU_01;							count[3] = 0;
	text[4]						= PRINT_Addon_KUMU_02;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Addon_MANA_01()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_MA_ArtefaktValue();

	MA_Ring_1_Equipped = TRUE;

	NewValue = C_MA_ArtefaktValue();

	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + (NewValue - OldValue);
};

func void UnEquip_ItRi_Addon_MANA_01()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_MA_ArtefaktValue();

	MA_Ring_1_Equipped = FALSE;

	NewValue = C_MA_ArtefaktValue();

	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + (NewValue - OldValue);
};

// ---------------------------------------------------------------------------------------------------------
instance ItRi_Addon_MANA_02(C_Item) // Senat
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Total_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Addon_MANA_02;
	on_unequip					= UnEquip_ItRi_Addon_MANA_02;

	value						= Value_ItRi_Addon_Mana_01;

	description					= "Ring der Priester";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Mana;								count[2] = MA_Ring_Solo_Bonus;
	text[3]						= PRINT_Addon_KUMU_01;							count[3] = 0;
	text[4]						= PRINT_Addon_KUMU_02;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Addon_Mana_02()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_MA_ArtefaktValue();

	MA_Ring_2_Equipped = TRUE;

	NewValue = C_MA_ArtefaktValue();

	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + (NewValue - OldValue);
};

func void UnEquip_ItRi_Addon_Mana_02()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_MA_ArtefaktValue();

	MA_Ring_2_Equipped = FALSE;

	NewValue = C_MA_ArtefaktValue();

	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + (NewValue - OldValue);
};

// ------------------------------------------------------------------------------------------
// Kumulatives Stärke Amulett (Maya)
// ------------------------------------------------------------------------------------------
instance ItAm_Addon_STR(C_Item) // feuerwaranhöhle strand
{
	name						= NAME_Amulett;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItAm_Hp_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItAm_Addon_STR;
	on_unequip					= UnEquip_ItAm_Addon_STR;

	value						= Value_ItAm_Addon_STR;

	description					= "Amulett der Krieger";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = STR_Amulett_Solo_Bonus;
	text[3]						= PRINT_Addon_KUMU_01;							count[3] = 0;
	text[4]						= PRINT_Addon_KUMU_02;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
};

func void Equip_ItAm_Addon_STR()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_STR_ArtefaktValue();

	STR_Amulett_Equipped = TRUE;

	NewValue = C_STR_ArtefaktValue();

	self.protection[PROT_EDGE] += (NewValue - OldValue);
	self.protection[PROT_BLUNT] += (NewValue - OldValue);
};

func void UnEquip_ItAm_Addon_STR()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_STR_ArtefaktValue();

	STR_Amulett_Equipped = FALSE;

	NewValue = C_STR_ArtefaktValue();

	self.protection[PROT_EDGE] += (NewValue - OldValue);
	self.protection[PROT_BLUNT] += (NewValue - OldValue);
};

// ------------------------------------------------------------------------------------------
// Kumulativer STR Ring (Maya)
// ------------------------------------------------------------------------------------------
instance ItRi_Addon_STR_01(C_Item) // Geschenk von Greg
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Total_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Addon_STR_01;
	on_unequip					= UnEquip_ItRi_Addon_STR_01;

	value						= Value_ItRi_Addon_STR_01;

	description					= "Ring der Krieger";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = STR_Ring_Solo_Bonus;
	text[3]						= PRINT_Addon_KUMU_01;							count[3] = 0;
	text[4]						= PRINT_Addon_KUMU_02;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Addon_STR_01()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_STR_ArtefaktValue();

	STR_Ring_1_Equipped = TRUE;

	NewValue = C_STR_ArtefaktValue();

	self.protection[PROT_EDGE] += (NewValue - OldValue);
	self.protection[PROT_BLUNT] += (NewValue - OldValue);
};

func void UnEquip_ItRi_Addon_STR_01()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_STR_ArtefaktValue();

	STR_Ring_1_Equipped = FALSE;

	NewValue = C_STR_ArtefaktValue();

	self.protection[PROT_EDGE] += (NewValue - OldValue);
	self.protection[PROT_BLUNT] += (NewValue - OldValue);
};

// ---------------------------------------------------------------------------------------------------------
instance ItRi_Addon_STR_02(C_Item) // in Quarhodrons grab
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Total_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Addon_STR_02;
	on_unequip					= UnEquip_ItRi_Addon_STR_02;

	value						= Value_ItRi_Addon_STR_01;

	description					= "Ring der Krieger";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = STR_Ring_Solo_Bonus;
	text[3]						= PRINT_Addon_KUMU_01;							count[3] = 0;
	text[4]						= PRINT_Addon_KUMU_02;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Addon_STR_02()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_STR_ArtefaktValue();

	STR_Ring_2_Equipped = TRUE;

	NewValue = C_STR_ArtefaktValue();

	self.protection[PROT_EDGE] += (NewValue - OldValue);
	self.protection[PROT_BLUNT] += (NewValue - OldValue);
};

func void UnEquip_ItRi_Addon_STR_02()
{
	var int OldValue;
	var int NewValue;

	OldValue = C_STR_ArtefaktValue();

	STR_Ring_2_Equipped = FALSE;

	NewValue = C_STR_ArtefaktValue();

	self.protection[PROT_EDGE] += (NewValue - OldValue);
	self.protection[PROT_BLUNT] += (NewValue - OldValue);
};
