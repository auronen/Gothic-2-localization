const int Value_Sc_Water = 1;

const int Value_Sc_IceLance = 100;
const int Value_Sc_Whirlwind = 200;
const int Value_Sc_Geyser = 100;
const int Value_Sc_Thunderstorm = 200;
const int Value_Sc_Waterfist = 100;

instance ItSc_Geyser(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water01.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_Geyser;

	value						= Value_Sc_Geyser;

	description					= NAME_SPL_Geyser;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Damage;									count[2] = SPL_DAMAGE_Geyser;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Icelance(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water04.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_Icelance;

	value						= Value_Sc_Icelance;

	description					= NAME_SPL_Icelance;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Damage;									count[2] = SPL_DAMAGE_Icelance;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Waterfist(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water03.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_Waterfist;

	value						= Value_Sc_Waterfist;

	description					= NAME_SPL_Waterfist;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Damage;									count[2] = SPL_DAMAGE_Waterfist;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Thunderstorm(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water05.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_Thunderstorm;

	value						= Value_Sc_Thunderstorm;

	description					= NAME_SPL_Thunderstorm;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Damage;									count[2] = SPL_DAMAGE_Thunderstorm;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Whirlwind(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water02.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_Whirlwind;

	value						= Value_Sc_Whirlwind;

	description					= NAME_SPL_Whirlwind;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Sec_Duration;							count[2] = SPL_TIME_WHIRLWIND;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*

instance ItSc_Water01(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water01.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W01";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water02(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water02.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W02";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water03(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water03.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W03";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water04(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water04.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W04";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water05(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water05.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W05";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water06(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water06.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W06";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water07(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water07.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W07";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water08(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water08.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W08";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water09(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water09.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W09";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water10(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water10.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W10";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water11(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water11.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W11";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water12(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water12.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W12";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water13(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water13.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W13";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water14(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water14.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W14";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water15(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water15.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W15";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSc_Water16(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Water16.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Water;

	description					= "W16";
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

*/
