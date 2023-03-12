// ------------------------------------------------------------------------------------------
// AddOn Runen, by KaiRo
// ------------------------------------------------------------------------------------------
// Constanten

// Kreis des Wassers
const int Value_Ru_Icelance = 1000;
const int Value_Ru_Whirlwind = 1000;
const int Value_Ru_Thunderstorm = 1500;
const int Value_Ru_Geyser = 1500;
const int Value_Ru_Waterfist = 2000;

// Maya Magic
const int Value_Ru_Greententacle = 2500;
const int Value_Ru_Swarm = 1500;
const int Value_Ru_Energyball = 3500;
const int Value_Ru_SuckEnergy = 3500;
const int Value_Ru_Skull = 2000;
const int Value_Ru_SummonGuardian = 2000;
const int Value_Ru_SummonZombie = 2000;

// Dummies
const int Value_Ru_Beliar = 100;
const int Value_Ru_Water = 200;

// #######################################################
//		KDW
// #######################################################

/*******************************************************************************************/
instance ItRu_Thunderstorm(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water05.3DS";
	material					= MAT_STONE;

	spell						= SPL_Thunderstorm;
	mag_circle					= 3;

	value						= Value_Ru_Thunderstorm;

	description					= NAME_SPL_Thunderstorm;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Thunderstorm;
	text[2]						= NAME_Damage;									count[2] = SPL_DAMAGE_Thunderstorm;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Whirlwind(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water02.3DS";
	material					= MAT_STONE;

	spell						= SPL_Whirlwind;
	mag_circle					= 2;

	value						= Value_Ru_Whirlwind;

	description					= NAME_SPL_Whirlwind;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Whirlwind;
	text[2]						= NAME_Sec_Duration;							count[2] = SPL_TIME_WHIRLWIND;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Geyser(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water01.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 3;

	value						= Value_Ru_Geyser;

	description					= NAME_SPL_Geyser;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= NAME_Damage;									count[2] = SPL_DAMAGE_Geyser;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Waterfist(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water03.3DS";
	material					= MAT_STONE;

	spell						= SPL_Waterfist;
	mag_circle					= 4;

	value						= Value_Ru_Waterfist;

	description					= NAME_SPL_Waterfist;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Waterfist;
	text[2]						= NAME_Damage;									count[2] = SPL_DAMAGE_Waterfist;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Icelance(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water04.3DS";
	material					= MAT_STONE;

	spell						= SPL_Icelance;
	mag_circle					= 2;

	value						= Value_Ru_Icelance;

	description					= NAME_SPL_Icelance;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Icelance;
	text[2]						= NAME_Damage;									count[2] = SPL_DAMAGE_Icelance;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// #############################################
//		Beliar
// #############################################

/*******************************************************************************************/
instance ItRu_BeliarsRage(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar04.3DS";
	material					= MAT_STONE;

	spell						= SPL_Energyball;
	mag_circle					= 3;

	value						= Value_Ru_Energyball;

	description					= NAME_SPL_BeliarsRage;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Energyball;
	text[2]						= NAME_Damage;									count[2] = SPL_DAMAGE_Energyball;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_SuckEnergy(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar01.3DS";
	material					= MAT_STONE;

	spell						= SPL_SuckEnergy;
	mag_circle					= 2;

	value						= Value_Ru_SuckEnergy;

	description					= NAME_SPL_SuckEnergy;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_SuckEnergy;
	text[2]						= NAME_Damage;									count[2] = SPL_SuckEnergy_Damage;
	text[3]						= NAME_Sec_Duration;							count[3] = SPL_TIME_SuckEnergy;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_GreenTentacle(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar03.3DS";
	material					= MAT_STONE;

	spell						= SPL_Greententacle;
	mag_circle					= 1;

	value						= Value_Ru_Greententacle;

	description					= NAME_SPL_GreenTentacle;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Greententacle;
	text[2]						= NAME_Sec_Duration;							count[2] = SPL_TIME_Greententacle;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Swarm(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar02.3DS";
	material					= MAT_STONE;

	spell						= SPL_Swarm;
	mag_circle					= 4;

	value						= Value_Ru_Swarm;

	description					= NAME_SPL_Swarm;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Swarm;
	text[2]						= NAME_Damage;									count[2] = SPL_Swarm_Damage;
	text[3]						= NAME_Sec_Duration;							count[3] = SPL_TIME_Swarm;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Skull(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar05.3DS";
	material					= MAT_STONE;

	spell						= SPL_Skull;
	mag_circle					= 5;

	value						= Value_Ru_Skull;

	description					= NAME_SPL_Skull;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_MinManakosten;							count[1] = SPL_Cost_Skull;
	text[2]						= NAME_Addon_NeedsAllMana;						count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Damage;									count[4] = SPL_Damage_Skull;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_SummonZombie(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar07.3DS";
	material					= MAT_STONE;

	spell						= SPL_SummonZombie;
	mag_circle					= 4;

	value						= Value_Ru_SummonZombie;

	description					= NAME_SPL_SummonZombie;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_SummonZombie;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_SummonGuardian(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar06.3DS";
	material					= MAT_STONE;

	spell						= SPL_SummonGuardian;
	mag_circle					= 3;

	value						= Value_Ru_SummonGuardian;

	description					= NAME_SPL_SummonGuardian;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_SummonGuardian;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*

// ################################################################
// ################################################################
// ###
// ### Dummies
// ###
// ################################################################
// ################################################################

instance ItRu_Water01(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water01.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W01";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water02(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water02.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W02";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water03(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water03.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W03";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water04(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water04.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W04";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water05(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water05.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W05";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water06(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water06.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W06";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water07(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water07.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W07";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water08(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water08.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W08";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water09(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water09.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W09";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water10(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water10.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W10";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water11(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water11.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W11";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water12(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water12.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W12";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water13(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water13.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W13";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water14(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water14.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W14";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water15(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water15.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W15";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Water16(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Water16.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Water;

	description					= "W16";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Beliar01(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar01.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Beliar;

	description					= "B01";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Beliar02(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar02.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Beliar;

	description					= "B02";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Beliar03(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar03.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Beliar;

	description					= "B03";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Beliar04(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar04.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Beliar;

	description					= "B04";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Beliar05(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar05.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Beliar;

	description					= "B05";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Beliar06(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar06.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Beliar;

	description					= "B06";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Beliar07(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar07.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Beliar;

	description					= "B07";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Beliar08(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar08.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Beliar;

	description					= "B08";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Beliar09(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar09.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Beliar;

	description					= "B09";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Beliar10(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar10.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Beliar;

	description					= "B10";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Beliar11(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_Beliar11.3DS";
	material					= MAT_STONE;

	spell						= SPL_Geyser;
	mag_circle					= 6;

	value						= Value_Ru_Beliar;

	description					= "B11";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Geyser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

*/
