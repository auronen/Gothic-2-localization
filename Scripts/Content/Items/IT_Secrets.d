//****************************************************************************
//				Erzfisch (Halvor)
//			---------------------------------------------
//****************************************************************************
instance ItSe_ErzFisch(C_Item)
{
	name						= "Kugeliger Fisch";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItFo_Fish.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_ErzFisch;

	value						= 25;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Irgendwas ist in diesem Fisch versteckt";	count[2] = 0;
};

func void Use_ErzFisch()
{
	B_PlayerFindItem(ItMi_Nugget, 1);
};

//****************************************************************************
//				Goldfisch (Halvor)
//			---------------------------------------------
//****************************************************************************
instance ItSe_GoldFisch(C_Item)
{
	name						= "Schwerer Fisch";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItFo_Fish.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_GoldFisch;

	value						= 25;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Irgendwas ist in diesem Fisch versteckt";	count[2] = 0;
};

func void Use_GoldFisch()
{
	B_PlayerFindItem(ItMI_Gold, 50);
};

//****************************************************************************
//				Ringfisch (Halvor) (Protcetion Fire Ring)
//			---------------------------------------------
//****************************************************************************
instance ItSe_Ringfisch(C_Item)
{
	name						= "Kleiner Fisch";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItFo_Fish.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_Ringfisch;

	value						= 25;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Irgendwas ist in diesem Fisch versteckt";	count[2] = 0;
};

func void Use_Ringfisch()
{
	B_PlayerFindItem(ItRi_Prot_Fire_01, 1);
};

//****************************************************************************
//				Lockpickfisch (Halvor)
//			---------------------------------------------
//****************************************************************************
instance ItSe_LockpickFisch(C_Item)
{
	name						= "Leichter Fisch";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItFo_Fish.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_LockpickFisch;

	value						= 25;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Irgendwas ist in diesem Fisch versteckt";	count[2] = 0;
};

func void Use_LockpickFisch()
{
	B_PlayerFindItem(ITKE_Lockpick, 3);
};

//****************************************************************************
//			Allgemeine Goldbeutel (25, 50, 100)
//			---------------------------------------------
//****************************************************************************

// ------------- 25 Gold -----------------------
instance ItSe_GoldPocket25(C_Item)
{
	name						= "Lederbeutel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= GoldPocket25;

	value						= 25;

	description					= "Ein Lederbeutel";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Ein paar Münzen klimpern darin";				count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void GoldPocket25()
{
	B_PlayerFindItem(ItMI_Gold, 25);
};

// ------------- 50 Gold -----------------------
instance ItSe_GoldPocket50(C_Item)
{
	name						= "Lederbeutel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= GoldPocket50;

	value						= 50;

	description					= "Ein Lederbeutel";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Beutel ist voller Münzen";				count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void GoldPocket50()
{
	B_PlayerFindItem(ItMI_Gold, 50);
};

// ------------- 100 Gold -----------------------
instance ItSe_GoldPocket100(C_Item)
{
	name						= "Lederbeutel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= GoldPocket100;

	value						= 100;

	description					= "Ein Lederbeutel";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Ein schwerer Beutel";						count[2] = 0;
	text[3]						= "gefüllt mit goldenen Münzen";				count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void GoldPocket100()
{
	B_PlayerFindItem(ItMI_Gold, 100);
};

// ------------- Hannas Beutel -----------------------
instance ItSe_HannasBeutel(C_Item)
{
	name						= "Lederbeutel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= HannasBeutel;

	value						= 100;

	description					= "Ein Lederbeutel";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Hanna hat ihn mir gegeben";					count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void HannasBeutel()
{
	CreateInvItems(hero, ITKE_Lockpick, 10);
	CreateInvItems(hero, ItKe_ThiefTreasure, 1);
	Print(PRINT_HannasBeutel);
};
