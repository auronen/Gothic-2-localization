// ************************************************************************************************
// 	Wert der Fackel
// ************************************************************************************************

const int Value_Fackel = 2;

// ************************************************************************************************
// 	Fackel muß ihre Instanznamen behalten
// ************************************************************************************************
instance ItLsTorch(C_Item)
{
	name						= "Fackel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_TORCH | ITEM_MULTI;

	visual						= "ItLs_Torch_01.3ds";
	material					= MAT_WOOD;

	value						= Value_Fackel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Eine Fackel";								count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItLsTorchburning(C_Item)
{
	name						= "Brennende Fackel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_TORCH;

	visual						= "ITLSTORCHBURNING.ZEN";
	material					= MAT_WOOD;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Eine Fackel";								count[3] = 0;
};

/******************************************************************************************/
instance ItLsTorchburned(C_Item)
{
	name						= "Fackel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_TORCH | ITEM_MULTI;

	visual						= "ItLs_Torchburned_01.3ds";
	material					= MAT_WOOD;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Eine ausgebrannte Fackel";					count[3] = 0;
};

// *****************
// Feuerspucker-Item
// *****************

instance ItLsTorchFirespit(C_Item)
{
	name						= "Fackel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_TORCH;

	visual						= "ITLSTORCHBURNING.ZEN";
	material					= MAT_WOOD;

	scemeName					= "FIRESPIT";

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};
