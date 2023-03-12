// ------------------------------------------------------------------------------------------
// Visuals --> aus den Armors
/*
ItAr_Pal_M ItMi_Belt_01.3DS
ItAr_Kdf_L ItMi_Belt_02.3DS -- > alle KDF / NOV Belts
ItAr_MIL_L ItMi_Belt_03.3DS -- > MIL_01 MIL_02
ItAr_Pal_H ItMi_Belt_04.3DS
ItAr_Sld_L ItMi_Belt_05.3DS -- > SLD_01 SLD_02
ItAr_Bau_L ItMi_Belt_06.3DS -- > Leder
ItAr_Bdt_H ItMi_Belt_07.3DS -- > SLD_03
ItAr_Bdt_M ItMi_Belt_08.3DS MC
ItAr_CorAngar ItMi_Belt_09.3DS
ItAr_Djg_H ItMi_Belt_10.3DS
ItAr_MIL_M ItMi_Belt_11.3DS -- > MIL_03
*/
// ------------------------------------------------------------------------------------------
// Values
// ------------------------------------------------------------------------------------------
const int Value_ItBE_Addon_Leather_01 = 250;

const int Value_ItBE_Addon_Leather_02 = 250;

const int Value_ItBE_Addon_SLD_01 = 250;

const int Value_ItBE_Addon_NOV_01 = 250;

const int Value_ItBE_Addon_MIL_01 = 250;

const int Value_ItBE_Addon_KDF_01 = 250;

const int Value_ItBE_Addon_MC = 250;

const int Value_ItBE_Addon_STR_5 = 500;
const int Value_ItBE_Addon_STR_10 = 1000;
const int Value_ItBE_Addon_DEX_5 = 500;
const int Value_ItBE_Addon_DEX_10 = 1000;

const int Value_ItBE_Addon_Prot_Edge = 500;
const int Value_ItBE_Addon_Prot_Point = 500;
const int Value_ItBE_Addon_Prot_Magic = 500;
const int Value_ItBE_Addon_Prot_Fire = 500;
const int Value_ItBE_Addon_Prot_EdgPoi = 1000;
const int Value_ItBE_Addon_Prot_Total = 2000;

// ---------------------------------------------------------
// Boni
// ---------------------------------------------------------
const int BA_Bonus01 = 5;
const int BA_Bonus02 = 5;

const int Belt_Prot_01 = 5;
// const int Belt_Prot_02 = 5;
// ---------------------------------------------------------
const int BeltBonus_STR01 = 5;
const int BeltBonus_STR02 = 10;
const int BeltBonus_DEX01 = 5;
const int BeltBonus_DEX02 = 10;

const int BeltBonus_ProtEdge = 10;
const int BeltBonus_ProtPoint = 10;
const int BeltBonus_ProtMagic = 10;
const int BeltBonus_ProtFire = 10;
const int BeltBonus_ProtEdgPoi = 7;
const int BeltBonus_ProtTotal = 7;
// ------------------------------------------------------------------------------------------
// Guertel (Belts)
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// Lederguertel
// ------------------------------------------------------------------------------------------
instance ItBE_Addon_Leather_01(C_Item) // Bosper(Kap1)/Hakon(1)/Khaled(1)/Orlan(1)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMI_Belt_06.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBE_Addon_Leather_01;
	on_unequip					= UnEquip_ItBE_Addon_Leather_01;

	value						= Value_ItBE_Addon_Leather_01;

	description					= "Ledergürtel";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = Belt_Prot_01;
	text[2]						= NAME_Prot_Point;								count[2] = Belt_Prot_01;
	text[3]						= NAME_Addon_BeArLeather;						count[3] = BA_Bonus01;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBE_Addon_Leather_01()
{
	self.protection[PROT_EDGE] += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;

	if (Npc_IsPlayer(self))
	{
		Leather01_Equipped = TRUE;

		if (LeatherArmor_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus02;
			self.protection[PROT_FIRE] += BA_Bonus02;
		};
	};
};

func void UnEquip_ItBE_Addon_Leather_01()
{
	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;

	if (Npc_IsPlayer(self))
	{
		Leather01_Equipped = FALSE;

		if (LeatherArmor_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus02;
			self.protection[PROT_FIRE] -= BA_Bonus02;
		};
	};
};

// ------------------------------------------------------------------------------------------
// Fellgürtel (SLD) Zweihand
// ------------------------------------------------------------------------------------------
instance ItBE_Addon_SLD_01(C_Item) // Bennet(Kap1)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_05.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBE_Addon_SLD_01;
	on_unequip					= UnEquip_ItBE_Addon_SLD_01;

	value						= Value_ItBE_Addon_SLD_01;

	description					= "Söldnergürtel";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = Belt_Prot_01;
	text[2]						= NAME_Prot_Point;								count[2] = Belt_Prot_01;
	text[3]						= NAME_Addon_BeArSLD;							count[3] = BA_Bonus01;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBE_Addon_SLD_01()
{
	SLD01_Equipped = TRUE;

	self.protection[PROT_EDGE] += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;

	if (SLDArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] += BA_Bonus01;
		self.protection[PROT_BLUNT] += BA_Bonus01;
		self.protection[PROT_POINT] += BA_Bonus01;
		self.protection[PROT_MAGIC] += BA_Bonus02;
		self.protection[PROT_FIRE] += BA_Bonus02;
	};
};

func void UnEquip_ItBE_Addon_SLD_01()
{
	SLD01_Equipped = FALSE;

	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;

	if (SLDArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] -= BA_Bonus01;
		self.protection[PROT_BLUNT] -= BA_Bonus01;
		self.protection[PROT_POINT] -= BA_Bonus01;
		self.protection[PROT_MAGIC] -= BA_Bonus02;
		self.protection[PROT_FIRE] -= BA_Bonus02;
	};
};

// ------------------------------------------------------------------------------------------
// Novizenschärpe (Zweihand)
// ------------------------------------------------------------------------------------------
instance ItBE_Addon_NOV_01(C_Item) // Gorax (Kap1)
{
	name						= NAME_Addon_BeltMage;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBE_Addon_NOV_01;
	on_unequip					= UnEquip_ItBE_Addon_NOV_01;

	value						= Value_ItBE_Addon_NOV_01;

	description					= "Schärpe der Bereitschaft";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = Belt_Prot_01;
	text[2]						= NAME_Prot_Point;								count[2] = Belt_Prot_01;
	text[3]						= NAME_Addon_BeArNOV;							count[3] = BA_Bonus01;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBE_Addon_NOV_01()
{
	NOV01_Equipped = TRUE;

	self.protection[PROT_EDGE] += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;

	if (NOVArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] += BA_Bonus01;
		self.protection[PROT_BLUNT] += BA_Bonus01;
		self.protection[PROT_POINT] += BA_Bonus01;
		self.protection[PROT_MAGIC] += BA_Bonus02;
		self.protection[PROT_FIRE] += BA_Bonus02;
	};
};

func void UnEquip_ItBE_Addon_NOV_01()
{
	NOV01_Equipped = FALSE;

	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;

	if (NOVArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] -= BA_Bonus01;
		self.protection[PROT_BLUNT] -= BA_Bonus01;
		self.protection[PROT_POINT] -= BA_Bonus01;
		self.protection[PROT_MAGIC] -= BA_Bonus02;
		self.protection[PROT_FIRE] -= BA_Bonus02;
	};
};

// ------------------------------------------------------------------------------------------
// Miliz (Zweihand)
// ------------------------------------------------------------------------------------------
instance ItBE_Addon_MIL_01(C_Item) // Hakon(Kap1)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_03.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBE_Addon_MIL_01;
	on_unequip					= UnEquip_ItBE_Addon_MIL_01;

	value						= Value_ItBE_Addon_MIL_01;

	description					= "Milizgürtel";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = Belt_Prot_01;
	text[2]						= NAME_Prot_Point;								count[2] = Belt_Prot_01;
	text[3]						= NAME_Addon_BeArMIL;							count[3] = BA_Bonus01;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBE_Addon_MIL_01()
{
	MIL01_Equipped = TRUE;

	self.protection[PROT_EDGE] += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;

	if (MILArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] += BA_Bonus01;
		self.protection[PROT_BLUNT] += BA_Bonus01;
		self.protection[PROT_POINT] += BA_Bonus01;
		self.protection[PROT_MAGIC] += BA_Bonus02;
		self.protection[PROT_FIRE] += BA_Bonus02;
	};
};

func void UnEquip_ItBE_Addon_MIL_01()
{
	MIL01_Equipped = FALSE;

	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;

	if (MILArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] -= BA_Bonus01;
		self.protection[PROT_BLUNT] -= BA_Bonus01;
		self.protection[PROT_POINT] -= BA_Bonus01;
		self.protection[PROT_MAGIC] -= BA_Bonus02;
		self.protection[PROT_FIRE] -= BA_Bonus02;
	};
};

// ------------------------------------------------------------------------------------------
// Feuermagier Mana
// ------------------------------------------------------------------------------------------
instance ItBE_Addon_KDF_01(C_Item) // Gorax(Kap1)
{
	name						= NAME_Addon_BeltMage;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBE_Addon_KDF_01;
	on_unequip					= UnEquip_ItBE_Addon_KDF_01;

	value						= Value_ItBE_Addon_KDF_01;

	description					= "Schärpe des Feuers";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = Belt_Prot_01;
	text[2]						= NAME_Prot_Point;								count[2] = Belt_Prot_01;
	text[3]						= NAME_Addon_BeArKDF;							count[3] = BA_Bonus01;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBE_Addon_KDF_01()
{
	KDF01_Equipped = TRUE;

	self.protection[PROT_EDGE] += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;

	if (KDFArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] += BA_Bonus01;
		self.protection[PROT_BLUNT] += BA_Bonus01;
		self.protection[PROT_POINT] += BA_Bonus01;
		self.protection[PROT_MAGIC] += BA_Bonus02;
		self.protection[PROT_FIRE] += BA_Bonus02;
	};
};

func void UnEquip_ItBE_Addon_KDF_01()
{
	KDF01_Equipped = FALSE;

	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;

	if (KDFArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] -= BA_Bonus01;
		self.protection[PROT_BLUNT] -= BA_Bonus01;
		self.protection[PROT_POINT] -= BA_Bonus01;
		self.protection[PROT_MAGIC] -= BA_Bonus02;
		self.protection[PROT_FIRE] -= BA_Bonus02;
	};
};

// ------------------------------------------------------------------------------------------
// Minecrawler Gürtel Zweihand
// ------------------------------------------------------------------------------------------
instance ItBE_Addon_MC(C_Item) // Bennet(Kap3)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_08.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBE_Addon_MC;
	on_unequip					= UnEquip_ItBE_Addon_MC;

	value						= Value_ItBE_Addon_MC;

	description					= "Minecrawler Gürtel";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = Belt_Prot_01;
	text[2]						= NAME_Prot_Point;								count[2] = Belt_Prot_01;
	text[3]						= NAME_Addon_BeArMC;							count[3] = BA_Bonus01;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBE_Addon_MC()
{
	MC_Equipped = TRUE;

	self.protection[PROT_EDGE] += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;

	if (MCArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] += BA_Bonus01;
		self.protection[PROT_BLUNT] += BA_Bonus01;
		self.protection[PROT_POINT] += BA_Bonus01;
		self.protection[PROT_MAGIC] += BA_Bonus01;
		self.protection[PROT_FIRE] += BA_Bonus01;
	};
};

func void UnEquip_ItBE_Addon_MC()
{
	MC_Equipped = FALSE;

	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;

	if (MCArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] -= BA_Bonus01;
		self.protection[PROT_BLUNT] -= BA_Bonus01;
		self.protection[PROT_POINT] -= BA_Bonus01;
		self.protection[PROT_MAGIC] -= BA_Bonus02;
		self.protection[PROT_FIRE] -= BA_Bonus02;
	};
};

// *****************************************************
// 						kleine Gürtel
// *****************************************************
// -----------------------------------------------------
// STR 5
// -----------------------------------------------------
instance ItBe_Addon_STR_5(C_Item) // Spielstart Xardas(Kap1)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_08.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBe_Addon_STR_5;
	on_unequip					= UnEquip_ItBe_Addon_STR_5;

	value						= Value_ItBE_Addon_STR_5;

	description					= "Gürtel der Kraft";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Str;								count[2] = BeltBonus_STR01;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBe_Addon_STR_5()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, + BeltBonus_STR01);
};

func void UnEquip_ItBe_Addon_STR_5()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, - BeltBonus_STR01);
};

// -----------------------------------------------------
// STR 10
// -----------------------------------------------------
instance ItBe_Addon_STR_10(C_Item) // Jora(Kap4)/Sengrath(4)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_05.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBe_Addon_STR_10;
	on_unequip					= UnEquip_ItBe_Addon_STR_10;

	value						= Value_ItBE_Addon_STR_10;

	description					= "Gürtel der Stärke";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Str;								count[2] = BeltBonus_STR02;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBe_Addon_STR_10()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, + BeltBonus_STR02);
};

func void UnEquip_ItBe_Addon_STR_10()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, - BeltBonus_STR02);
};

// -----------------------------------------------------
// DEX 5
// -----------------------------------------------------
instance ItBe_Addon_DEX_5(C_Item) // Bosper(Kap2)/Orlan(2)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_08.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBe_Addon_DEX_5;
	on_unequip					= UnEquip_ItBe_Addon_DEX_5;

	value						= Value_ItBE_Addon_DEX_5;

	description					= "Gürtel der Gewandtheit";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Dex;								count[2] = BeltBonus_DEX01;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBe_Addon_DEX_5()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, + BeltBonus_DEX01);
};

func void UnEquip_ItBe_Addon_DEX_5()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, - BeltBonus_DEX01);
};

// -----------------------------------------------------
// DEX 10
// -----------------------------------------------------
instance ItBe_Addon_DEX_10(C_Item) // Bosper(Kap3)/Lutero(3)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_05.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBe_Addon_DEX_10;
	on_unequip					= UnEquip_ItBe_Addon_DEX_10;

	value						= Value_ItBE_Addon_DEX_10;

	description					= "Gürtel der Geschicklichkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Dex;								count[2] = BeltBonus_DEX02;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBe_Addon_DEX_10()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, + BeltBonus_DEX02);
};

func void UnEquip_ItBe_Addon_DEX_10()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, - BeltBonus_DEX02);
};

// -----------------------------------------------------
// PROT EDGE
// -----------------------------------------------------
instance ItBe_Addon_Prot_EDGE(C_Item) // Hakon(Kap4)/Khaled(4)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBe_Addon_Prot_EDGE;
	on_unequip					= UnEquip_ItBe_Addon_Prot_EDGE;

	value						= Value_ItBE_Addon_Prot_EDGE;

	description					= "Gürtel des Schutzes";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = BeltBonus_ProtEdge;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBe_Addon_Prot_Edge()
{
	self.protection [PROT_EDGE] += BeltBonus_ProtEdge;
	self.protection [PROT_BLUNT] += BeltBonus_ProtEdge;
};

func void UnEquip_ItBe_Addon_Prot_Edge()
{
	self.protection [PROT_EDGE] -= BeltBonus_ProtEdge;
	self.protection [PROT_BLUNT] -= BeltBonus_ProtEdge;
};

// -----------------------------------------------------
// PROT POINT
// -----------------------------------------------------
instance ItBe_Addon_Prot_Point(C_Item) // Hakon(Kap3)/Khaled(3)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBe_Addon_Prot_Point;
	on_unequip					= UnEquip_ItBe_Addon_Prot_Point;

	value						= Value_ItBE_Addon_Prot_Point;

	description					= "Gürtel der Abwehr";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Point;								count[2] = BeltBonus_ProtPoint;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBe_Addon_Prot_Point()
{
	self.protection [PROT_POINT] += BeltBonus_ProtPoint;
};

func void UnEquip_ItBe_Addon_Prot_Point()
{
	self.protection [PROT_POINT] -= BeltBonus_ProtPoint;
};

// -----------------------------------------------------
// PROT MAGIC
// -----------------------------------------------------
instance ItBe_Addon_Prot_MAGIC(C_Item) // Gorax(Kap3)/Zuris(3)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBe_Addon_Prot_MAGIC;
	on_unequip					= UnEquip_ItBe_Addon_Prot_MAGIC;

	value						= Value_ItBE_Addon_Prot_MAGIC;

	description					= "Gürtel der magischen Abwehr";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_MAGIC;								count[2] = BeltBonus_ProtMAGIC;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBe_Addon_Prot_MAGIC()
{
	self.protection [PROT_MAGIC] += BeltBonus_ProtMAGIC;
};

func void UnEquip_ItBe_Addon_Prot_MAGIC()
{
	self.protection [PROT_MAGIC] -= BeltBonus_ProtMAGIC;
};

// -----------------------------------------------------
// PROT FIRE
// -----------------------------------------------------
instance ItBe_Addon_Prot_FIRE(C_Item) // Constantino(Kap3)/Sengrath(4)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBe_Addon_Prot_FIRE;
	on_unequip					= UnEquip_ItBe_Addon_Prot_FIRE;

	value						= Value_ItBE_Addon_Prot_FIRE;

	description					= "Gürtel des Feuerläufers";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_FIRE;								count[2] = BeltBonus_ProtFIRE;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBe_Addon_Prot_FIRE()
{
	self.protection [PROT_FIRE] += BeltBonus_ProtFIRE;
};

func void UnEquip_ItBe_Addon_Prot_FIRE()
{
	self.protection [PROT_FIRE] -= BeltBonus_ProtFIRE;
};

// -----------------------------------------------------
// PROT EdgPoi
// -----------------------------------------------------
instance ItBe_Addon_Prot_EdgPoi(C_Item) // Khaled(Kap4)/Orlan(3) Missionbelohnung von Garett für Feuerwarane (Kap2)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MISSION | ITEM_MULTI;

	visual						= "ItMi_Belt_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBe_Addon_Prot_EdgPoi;
	on_unequip					= UnEquip_ItBe_Addon_Prot_EdgPoi;

	value						= Value_ItBE_Addon_Prot_EdgPoi;

	description					= "Gürtel des Schutzes";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = BeltBonus_ProtEdgPoi;
	text[3]						= NAME_Prot_Point;								count[3] = BeltBonus_ProtEdgPoi;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBe_Addon_Prot_EdgPoi()
{
	self.protection [PROT_EDGE] += BeltBonus_ProtEdgPoi;
	self.protection [PROT_BLUNT] += BeltBonus_ProtEdgPoi;
	self.protection [PROT_POINT] += BeltBonus_ProtEdgPoi;
};

func void UnEquip_ItBe_Addon_Prot_EdgPoi()
{
	self.protection [PROT_EDGE] -= BeltBonus_ProtEdgPoi;
	self.protection [PROT_BLUNT] -= BeltBonus_ProtEdgPoi;
	self.protection [PROT_POINT] -= BeltBonus_ProtEdgPoi;
};

// -----------------------------------------------------
// PROT TOTAL
// -----------------------------------------------------
instance ItBe_Addon_Prot_TOTAL(C_Item) // Hakon(Kap4)
{
	name						= NAME_Addon_Belt;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_BELT | ITEM_MULTI;

	visual						= "ItMi_Belt_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItBe_Addon_Prot_TOTAL;
	on_unequip					= UnEquip_ItBe_Addon_Prot_TOTAL;

	value						= Value_ItBE_Addon_Prot_TOTAL;

	description					= "Beschützer-Gürtel";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = BeltBonus_ProtTOTAL;
	text[2]						= NAME_Prot_Point;								count[2] = BeltBonus_ProtTOTAL;
	text[3]						= NAME_Prot_Magic;								count[3] = BeltBonus_ProtTOTAL;
	text[4]						= NAME_Prot_Fire;								count[4] = BeltBonus_ProtTOTAL;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX					= INVCAM_ENTF_MISC2_STANDARD;
};

func void Equip_ItBe_Addon_Prot_TOTAL()
{
	self.protection [PROT_EDGE] += BeltBonus_ProtTOTAL;
	self.protection [PROT_BLUNT] += BeltBonus_ProtTOTAL;
	self.protection [PROT_POINT] += BeltBonus_ProtTOTAL;
	self.protection [PROT_MAGIC] += BeltBonus_ProtTOTAL;
	self.protection [PROT_FIRE] += BeltBonus_ProtTOTAL;
};

func void UnEquip_ItBe_Addon_Prot_TOTAL()
{
	self.protection [PROT_EDGE] -= BeltBonus_ProtTOTAL;
	self.protection [PROT_BLUNT] -= BeltBonus_ProtTOTAL;
	self.protection [PROT_POINT] -= BeltBonus_ProtTOTAL;
	self.protection [PROT_MAGIC] -= BeltBonus_ProtTOTAL;
	self.protection [PROT_FIRE] -= BeltBonus_ProtTOTAL;
};
