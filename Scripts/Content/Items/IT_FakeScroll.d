instance Fakescroll(C_Item)
{
	name						= "Letter";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	hp							= 5;
	hp_max						= 5;
	weight						= 1;

	visual						= "Fakescroll.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};
