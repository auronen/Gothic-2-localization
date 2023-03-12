//*****************************************************************************
//			Scrolls
//*****************************************************************************

// Paladin Scrolls
const int Value_Sc_PalLight = 50;
const int Value_Sc_PalLightHeal = 100;
const int Value_Sc_PalHolyBolt = 200;
const int Value_Sc_PalMediumHeal = 400;
const int Value_Sc_PalRepelEvil = 600;
const int Value_Sc_PalFullHeal = 800;
const int Value_Sc_PalDestroyEvil = 1000;

// Magier Scrolls
const int Value_Sc_Light = 10;
const int Value_Sc_Firebolt = 25;
const int Value_Sc_Charm = 100;
const int Value_Sc_Icebolt = 25;
const int Value_Sc_LightHeal = 25;
const int Value_Sc_SumGobSkel = 75;
const int Value_Sc_InstantFireball = 50;

const int Value_Sc_Zap = 60;
const int Value_Sc_SumWolf = 75;
const int Value_Sc_Windfist = 60;
const int Value_Sc_Sleep = 100;
const int Value_Sc_MediumHeal = 60;
const int Value_Sc_LightningFlash = 125;
const int Value_Sc_ChargeFireball = 60;
const int Value_Sc_SumSkel = 75;
const int Value_Sc_Fear = 75;
const int Value_Sc_IceCube = 100;

const int Value_Sc_ThunderBall = 75;
const int Value_Sc_SumGol = 150;
const int Value_Sc_HarmUndead = 75;
const int Value_Sc_Pyrokinesis = 150;

const int Value_Sc_Firestorm = 100;
const int Value_Sc_IceWave = 200;
const int Value_Sc_SumDemon = 200;
const int Value_Sc_FullHeal = 200;

const int Value_Sc_Firerain = 250;
const int Value_Sc_BreathOfDeath = 250;
const int Value_Sc_MassDeath = 250;
const int Value_Sc_ArmyOfDarkness = 250;
const int Value_Sc_Shrink = 250;

const int Value_Sc_TrfSheep = 25;
const int Value_Sc_TrfScavenger = 50;
const int Value_Sc_TrfGiantRat = 50;
const int Value_Sc_TrfGiantBug = 60;
const int Value_Sc_TrfWolf = 75;
const int Value_Sc_TrfWaran = 80;
const int Value_Sc_TrfSnapper = 125;
const int Value_Sc_TrfWarg = 125;
const int Value_Sc_TrfFireWaran = 200;
const int Value_Sc_TrfLurker = 80;
const int Value_Sc_TrfShadowbeast = 200;
const int Value_Sc_TrfDragonSnapper = 200;

/*******************************************************************************************/
// 			Paladin Scrolls
/*******************************************************************************************/
instance ItSc_PalLight(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_PalLight.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_PalLight;

	value						= Value_Sc_PalLight;

	description					= NAME_SPL_PalLight;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Spruchrolle;								count[1] = 0;
	text[2]						= NAME_Mana_needed;								count[2] = SPL_Cost_Scroll;
	text[3]						= NAME_Duration;								count[3] = SPL_Duration_PalLIGHT;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_PalLightHeal(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_PalLightHeal.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_PalLightHeal;

	value						= Value_Sc_PalLightHeal;

	description					= NAME_SPL_PalLightHeal;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Spruchrolle;								count[1] = 0;
	text[2]						= NAME_Mana_needed;								count[2] = SPL_Cost_Scroll;
	text[3]						= NAME_HealingPerCast;							count[3] = SPL_Heal_PalLightHeal;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_PalHolyBolt(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_PalHolyBolt.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_PalHolyBolt;

	value						= Value_Sc_PalHolyBolt;

	description					= NAME_SPL_PalHolyBolt;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Spruchrolle;								count[1] = 0;
	text[2]						= NAME_Mana_needed;								count[2] = SPL_Cost_Scroll;
	text[3]						= NAME_Dam_Magic;								count[3] = SPL_Damage_PalHolyBolt;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_PalMediumHeal(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_PalMediumHeal.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_PalMediumHeal;

	value						= Value_Sc_PalMediumHeal;

	description					= NAME_SPL_PalMediumHeal;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Spruchrolle;								count[1] = 0;
	text[2]						= NAME_Mana_needed;								count[2] = SPL_Cost_Scroll;
	text[3]						= NAME_HealingPerCast;							count[3] = SPL_Heal_PalMediumHeal;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_PalRepelEvil(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_PalRepelEvil.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_PalRepelEvil;

	value						= Value_Sc_PalRepelEvil;

	description					= NAME_SPL_PalRepelEvil;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Spruchrolle;								count[1] = 0;
	text[2]						= NAME_Mana_needed;								count[2] = SPL_Cost_Scroll;
	text[3]						= NAME_Dam_Magic;								count[3] = SPL_Damage_PalRepelEvil;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_PalFullHeal(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_PalFullHeal.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_PalFullHeal;

	value						= Value_Sc_PalFullHeal;

	description					= NAME_SPL_PalFullHeal;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Spruchrolle;								count[1] = 0;
	text[2]						= NAME_Mana_needed;								count[2] = SPL_Cost_Scroll;
	text[3]						= NAME_HealingPerCast;							count[3] = SPL_Heal_PalFullHeal;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_PalDestroyEvil(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_PalDestroyEvil.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_PalDestroyEvil;

	value						= Value_Sc_PalDestroyEvil;

	description					= NAME_SPL_PalDestroyEvil;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Spruchrolle;								count[1] = 0;
	text[2]						= NAME_Mana_needed;								count[2] = SPL_Cost_Scroll;
	text[3]						= NAME_Dam_Magic;								count[3] = SPL_Damage_PalDestroyEvil;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// 			Magier Scrolls
/*******************************************************************************************/
instance ItSc_Light(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Light.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LIGHT;

	value						= Value_Sc_Light;

	description					= NAME_SPL_LIGHT;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_Firebolt(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Firebolt.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_FIREBOLT;

	value						= Value_Sc_Firebolt;

	description					= NAME_SPL_Firebolt;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_FIREBOLT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_Icebolt(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItSc_Icebolt.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_Icebolt;

	value						= Value_Sc_Icebolt;

	description					= NAME_SPL_Icebolt;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_Icebolt;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_LightHeal(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_LightHeal.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LightHeal;

	value						= Value_Sc_LightHeal;

	description					= NAME_SPL_LightHeal;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_HealingPerCast;							count[2] = SPL_Heal_LightHeal;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_SumGobSkel(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_SumGobSkel.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_SummonGoblinSkeleton;

	value						= Value_Sc_SumGobSkel;

	description					= NAME_SPL_SummonGoblinSkeleton;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_InstantFireball(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_YELLOW";

	visual						= "ItSc_InstantFireball.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_InstantFireball;

	value						= Value_Sc_InstantFireball;

	description					= NAME_SPL_InstantFireball;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_InstantFireball;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_Zap(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Zap.3DS";
	material					= MAT_LEATHER;

	spell						= SPL_Zap;

	value						= Value_Sc_Zap;

	description					= NAME_SPL_Zap;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_ZAP;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_SumWolf(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_SumWolf.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_SummonWolf;

	value						= Value_Sc_SumWolf;

	description					= NAME_SPL_SummonWolf;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_Windfist(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Windfist.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= STEP_WINDFIST;
	spell						= SPL_WINDFIST;

	value						= Value_Sc_Windfist;

	description					= NAME_SPL_WINDFIST;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_MinManakosten;							count[1] = STEP_WindFist;
	text[2]						= NAME_ManakostenMax;							count[2] = SPL_COST_WINDFIST;
	text[3]						= NAME_Addon_Damage_Min;						count[3] = SPL_Damage_Windfist;
	text[4]						= NAME_Damage_Max;								count[4] = (SPL_Damage_Windfist * 4);
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_Sleep(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Sleep.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_SLEEP;

	value						= Value_Sc_Sleep;

	description					= NAME_SPL_Sleep;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Sec_Duration;							count[2] = SPL_TIME_Sleep;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_Charm(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Sleep.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_CHARM;

	value						= Value_Sc_Charm;

	description					= NAME_SPL_Charm;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_MediumHeal(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_MediumHeal.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_MediumHeal;

	value						= Value_Sc_MediumHeal;

	description					= NAME_SPL_MediumHeal;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_HealingPerCast;							count[2] = SPL_Heal_MediumHeal;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_LightningFlash(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_LightningFlash.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_LightningFlash;

	value						= Value_Sc_LightningFlash;

	description					= NAME_SPL_LightningFlash;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_Damage_LightningFlash;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_ChargeFireball(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_YELLOW";

	visual						= "ItSc_ChargeFireball.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= STEP_CHARGEFIREBALL;
	spell						= SPL_ChargeFireball;

	value						= Value_Sc_ChargeFireball;

	description					= NAME_SPL_ChargeFireball;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_MinManakosten;							count[1] = STEP_ChargeFireball;
	text[2]						= NAME_ManakostenMax;							count[2] = SPL_COST_ChargeFireball;
	text[3]						= NAME_Addon_Damage_Min;						count[3] = SPL_Damage_ChargeFireball;
	text[4]						= NAME_Damage_Max;								count[4] = (SPL_Damage_ChargeFireball * 4);
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_SumSkel(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_SumSkel.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_SUMMONSKELETON;

	value						= Value_Sc_SumSkel;

	description					= NAME_SPL_SummonSkeleton;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_Fear(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Fear.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_FEAR;

	value						= Value_Sc_Fear;

	description					= NAME_SPL_Fear;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Sec_Duration;							count[2] = SPL_TIME_Fear;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_IceCube(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItSc_IceCube.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_ICECUBE;

	value						= Value_Sc_IceCube;

	description					= NAME_SPL_IceCube;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Damage;									count[2] = 60;
	text[3]						= NAME_Sec_Duration;							count[3] = SPL_TIME_FREEZE;
	text[4]						= NAME_DamagePerSec;							count[4] = SPL_FREEZE_DAMAGE;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_ThunderBall(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_ThunderBall.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= STEP_CHARGEZAP;
	spell						= SPL_ChargeZap;

	value						= Value_Sc_ThunderBall;

	description					= NAME_SPL_ChargeZap;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_MinManakosten;							count[1] = STEP_ChargeZap;
	text[2]						= NAME_ManakostenMax;							count[2] = SPL_COST_ChargeZap;
	text[3]						= NAME_Addon_Damage_Min;						count[3] = SPL_Damage_ChargeZap;
	text[4]						= NAME_Damage_Max;								count[4] = (SPL_Damage_ChargeZap * 4);
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_SumGol(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_SumGol.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_SUMMONGOLEM;

	value						= Value_SC_SumGol;

	description					= NAME_SPL_SummonGolem;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_HarmUndead(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_HarmUndead.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_DESTROYUNDEAD;

	value						= Value_Sc_HarmUndead;

	description					= NAME_SPL_DestroyUndead;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_DESTROYUNDEAD;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_Pyrokinesis(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_YELLOW";

	visual						= "ItSc_Pyrokinesis.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= STEP_Firestorm;
	spell						= SPL_PYROKINESIS;

	value						= Value_Sc_Pyrokinesis;

	description					= NAME_SPL_Pyrokinesis;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_MinManakosten;							count[1] = STEP_Firestorm;
	text[2]						= NAME_ManakostenMax;							count[2] = SPL_COST_Firestorm;
	text[3]						= NAME_Addon_Damage_Min;						count[3] = SPL_Damage_Firestorm;
	text[4]						= NAME_Damage_Max;								count[4] = (SPL_Damage_Firestorm * 4);
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_Firestorm(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_YELLOW";

	visual						= "ItSc_Firestorm.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_FIRESTORM;

	value						= Value_Sc_Firestorm;

	description					= NAME_SPL_Firestorm;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_INSTANTFIRESTORM;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_IceWave(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItSc_IceWave.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_ICEWAVE;

	value						= Value_SC_IceWave;

	description					= NAME_SPL_IceWave;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Damage;									count[2] = 60;
	text[3]						= NAME_Sec_Duration;							count[3] = SPL_TIME_FREEZE;
	text[4]						= NAME_DamagePerSec;							count[4] = SPL_FREEZE_DAMAGE;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_SumDemon(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_SumDemon.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_SUMMONDEMON;

	value						= Value_Sc_SumDemon;

	description					= NAME_SPL_SummonDemon;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/

instance ItSc_FullHeal(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_FullHeal.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_FullHeal;

	value						= Value_Sc_FullHeal;

	description					= NAME_SPL_FullHeal;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_HealingPerCast;							count[2] = SPL_Heal_FullHeal;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_Firerain(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_YELLOW";

	visual						= "ItSc_Firerain.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_FIRERAIN;

	value						= Value_Sc_Firerain;

	description					= NAME_SPL_Firerain;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Dam_Fire;								count[2] = SPL_DAMAGE_FIRERAIN;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_BreathOfDeath(C_Item) // Joly:Auf Dracheninsel in Truhe der Schwarzmagiernovizen
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItSc_BreathOfDeath.3ds";
	material					= MAT_LEATHER;

	spell						= SPL_BREATHOFDEATH;

	value						= Value_Sc_BreathofDeath;

	description					= NAME_SPL_BreathOfDeath;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_BREATHOFDEATH;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_MassDeath(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItSc_MassDeath.3ds";
	material					= MAT_LEATHER;

	spell						= SPL_MASSDEATH;

	value						= Value_Sc_Massdeath;

	description					= NAME_SPL_MassDeath;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_MASSDEATH;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_ArmyOfDarkness(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItSc_ArmyOfDarkness.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_ARMYOFDARKNESS;

	value						= Value_Sc_ArmyofDarkness;

	description					= NAME_SPL_ArmyOfDarkness;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/

instance ItSc_Shrink(C_Item) // Joly:Auf Dracheninsel in Truhe der Schwarzmagiernovizen
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_Shrink.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_SHRINK;

	value						= Value_Sc_Shrink;

	description					= NAME_SPL_Shrink;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_TrfSheep(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_TrfSheep.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_TrfSheep;

	value						= Value_Sc_TrfSheep;

	description					= NAME_SPL_TrfSheep;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_TrfScavenger(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_TrfScavenger.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_TrfScavenger;

	value						= Value_Sc_TrfScavenger;

	description					= NAME_SPL_TrfScavenger;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_TrfGiantRat(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_TrfGiantRat.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_TrfGiantRat;

	value						= Value_Sc_TrfGiantrat;

	description					= NAME_SPL_TrfGiantRat;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_TrfGiantBug(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_TrfGiantBug.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_TrfGiantBug;

	value						= Value_Sc_TrfGiantBug;

	description					= NAME_SPL_TrfGiantBug;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_TrfWolf(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_TrfWolf.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_TrfWolf;

	value						= Value_Sc_TrfWolf;

	description					= NAME_SPL_TrfWolf;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_TrfWaran(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_TrfWaran.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_TrfWaran;

	value						= Value_Sc_TrfWaran;

	description					= NAME_SPL_TrfWaran;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_TrfSnapper(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_TrfSnapper.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_TrfSnapper;

	value						= Value_Sc_TrfSnapper;

	description					= NAME_SPL_TrfSnapper;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_TrfWarg(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_TrfWarg.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_TrfWarg;

	value						= Value_Sc_TrfWarg;

	description					= NAME_SPL_TrfWarg;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_TrfFireWaran(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_TrfFireWaran.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_TrfFireWaran;

	value						= Value_Sc_TrfFireWaran;

	description					= NAME_SPL_TrfFireWaran;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_TrfLurker(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_TrfLurker.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_TrfLurker;

	value						= Value_Sc_TrfLurker;

	description					= NAME_SPL_TrfLurker;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_TrfShadowbeast(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_TrfShadowbeast.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_TrfShadowbeast;

	value						= Value_Sc_TrfShadowbeast;

	description					= NAME_SPL_TrfShadowbeast;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItSc_TrfDragonSnapper(C_Item) // Joly:Auf Dracheninsel in Truhe der Schwarzmagiernovizen
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_TrfDragonSnapper.3DS";
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_TrfDragonSnapper;

	value						= Value_Sc_TrfDragonSnapper;

	description					= NAME_SPL_TrfDragonSnapper;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
