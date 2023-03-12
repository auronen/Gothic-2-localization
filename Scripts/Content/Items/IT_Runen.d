// Runen
// Paladin Runen

//********************************************************************************************
// Joly: Macht die Runen nicht zu teuer, es sind Produktionsitems -> EXPLOID!!!!!!!!!!!
//********************************************************************************************

const int Value_Ru_PalLight = 500;
const int Value_Ru_PalLightHeal = 500;
const int Value_Ru_PalHolyBolt = 500;
const int Value_Ru_PalMediumHeal = 2000;
const int Value_Ru_PalRepelEvil = 2000;
const int Value_Ru_PalFullHeal = 3000;
const int Value_Ru_PalDestroyEvil = 3000;

//********************************************************************************************
// Joly: Macht die Runen nicht zu teuer, es sind Produktionsitems -> EXPLOID!!!!!!!!!!!
//********************************************************************************************

// Kreis 1
const int Value_Ru_Light = 500; // Lehrer Parlan
const int Value_Ru_Firebolt = 500; // Lehrer Hyglas
const int Value_Ru_Zap = 500; // Lehrer Marduk
const int Value_Ru_LightHeal = 500; // Lehrer Parlan
const int Value_Ru_SumGobSkel = 500; // Lehrer Karras
// Kreis 2
const int Value_Ru_InstantFireball = 1000; // Lehrer Hyglas
const int Value_Ru_Icebolt = 1000; // Lehrer Marduk
const int Value_Ru_SumWolf = 1000; // Lehrer Karras
const int Value_Ru_Windfist = 1000;
const int Value_Ru_Sleep = 1000;
// Kreis 3
const int Value_Ru_MediumHeal = 1500; // Lehrer Parlan
const int Value_Ru_SumSkel = 1500; // Lehrer Karras
const int Value_Ru_Fear = 1500;
const int Value_Ru_IceCube = 1500; // Lehrer Marduk
const int Value_Ru_ThunderBall = 1500; // Lehrer Marduk
const int Value_Ru_Firestorm = 1500; // Lehrer Hyglas
// Kreis 4
const int Value_Ru_SumGol = 2000; // Lehrer Karras
const int Value_Ru_HarmUndead = 2000;
const int Value_Ru_LightningFlash = 2000; // Lehrer Marduk
const int Value_Ru_ChargeFireball = 2000; // Lehrer Hyglas
// Kreis 5
const int Value_Ru_IceWave = 2500; // Lehrer Marduk
const int Value_Ru_SumDemon = 2500; // Lehrer Karras
const int Value_Ru_FullHeal = 2500; // Lehrer Parlan
const int Value_Ru_Pyrokinesis = 2500; // Lehrer Hyglas
// Kreis 6
const int Value_Ru_Firerain = 3000; // Lehrer Hyglas
const int Value_Ru_BreathOfDeath = 3000;
const int Value_Ru_MassDeath = 3000;
const int Value_Ru_MasterOfDisaster = 3000;
const int Value_Ru_ArmyOfDarkness = 3000; // Lehrer Karras
const int Value_Ru_Shrink = 3000;

// TeleportRunen
const int Value_Ru_PalTeleportSecret = 500;
const int Value_Ru_TeleportSeaport = 500;
const int Value_Ru_TeleportMonastery = 500;
const int Value_Ru_TeleportFarm = 500;
const int Value_Ru_TeleportXardas = 500;
const int Value_Ru_TeleportPassNW = 500;
const int Value_Ru_TeleportPassOW = 500;
const int Value_Ru_TeleportOC = 500;
const int Value_Ru_TeleportOWDemonTower = 500;
const int Value_Ru_TeleportTaverne = 500;
const int Value_Ru_Teleport_3 = 500;

/*******************************************************************************************/
instance ItRu_PalLight(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_PalLight.3ds";
	material					= MAT_STONE;

	spell						= SPL_PalLight;

	value						= Value_Ru_PalLight;

	description					= NAME_SPL_PalLight;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Rune;									count[1] = 0;
	text[2]						= NAME_Manakosten;								count[2] = SPL_Cost_PalLight;
	text[3]						= NAME_Duration;								count[3] = SPL_Duration_PalLIGHT;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_PalLightHeal(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_PalLightHeal.3ds";
	material					= MAT_STONE;

	spell						= SPL_PalLightHeal;

	value						= Value_Ru_PalLightHeal;

	description					= NAME_SPL_PalLightHeal;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Rune;									count[1] = 0;
	text[2]						= NAME_Manakosten;								count[2] = SPL_Cost_PalLightHeal;
	text[3]						= NAME_HealingPerCast;							count[3] = SPL_Heal_PalLightHeal;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_PalMediumHeal(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_PalMediumHeal.3ds";
	material					= MAT_STONE;

	spell						= SPL_PalMediumHeal;

	value						= Value_Ru_PalMediumHeal;

	description					= NAME_SPL_PalMediumHeal;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Rune;									count[1] = 0;
	text[2]						= NAME_Manakosten;								count[2] = SPL_Cost_PalMediumHeal;
	text[3]						= NAME_HealingPerCast;							count[3] = SPL_Heal_PalMediumHeal;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_PalFullHeal(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_PalFullHeal.3ds";
	material					= MAT_STONE;

	spell						= SPL_PalFullHeal;

	value						= Value_Ru_PalFullHeal;

	description					= NAME_SPL_PalFullHeal;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Rune;									count[1] = 0;
	text[2]						= NAME_Manakosten;								count[2] = SPL_Cost_PalFullHeal;
	text[3]						= NAME_HealingPerCast;							count[3] = SPL_Heal_PalFullHeal;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_PalHolyBolt(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_PalHolyBolt.3DS";
	material					= MAT_STONE;

	spell						= SPL_PalHolyBolt;

	value						= Value_Ru_PalHolyBolt;

	description					= NAME_SPL_PalHolyBolt;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Rune;									count[1] = 0;
	text[2]						= NAME_Manakosten;								count[2] = SPL_Cost_PalHolyBolt;
	text[3]						= NAME_Dam_Magic;								count[3] = SPL_Damage_PalHolyBolt;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/

instance ItRu_PalRepelEvil(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_PalRepelEvil.3DS";
	material					= MAT_STONE;

	spell						= SPL_PalRepelEvil;

	value						= Value_Ru_PalRepelEvil;

	description					= NAME_SPL_PalRepelEvil;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Rune;									count[1] = 0;
	text[2]						= NAME_Manakosten;								count[2] = SPL_Cost_PalRepelEvil;
	text[3]						= NAME_Dam_Magic;								count[3] = SPL_Damage_PalRepelEvil;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_PalDestroyEvil(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_PalDestroyEvil.3DS";
	material					= MAT_STONE;

	spell						= SPL_PalDestroyEvil;

	value						= Value_Ru_PalDestroyEvil;

	description					= NAME_SPL_PalDestroyEvil;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Rune;									count[1] = 0;
	text[2]						= NAME_Manakosten;								count[2] = SPL_Cost_PalDestroyEvil;
	text[3]						= NAME_Dam_Magic;								count[3] = SPL_Damage_PalDestroyEvil;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_PalTeleportSecret(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_PalTeleportSecret.3DS";
	material					= MAT_STONE;

	spell						= SPL_PalTeleportSecret;

	value						= Value_Ru_PalTeleportSecret;

	description					= NAME_SPL_PalTeleportSecret;
	text[0]						= NAME_Paladin;									count[0] = 0;
	text[1]						= NAME_Rune;									count[1] = 0;
	text[2]						= NAME_Manakosten;								count[2] = SPL_Cost_Teleport;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_TeleportSeaport(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_TeleportSeaport.3ds";
	material					= MAT_STONE;

	spell						= SPL_TeleportSeaport;

	value						= Value_Ru_TeleportSeaport;

	description					= NAME_SPL_TeleportSeaport;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_TELEPORT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_TeleportMonastery(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_TeleportMonastery.3ds";
	material					= MAT_STONE;

	spell						= SPL_TeleportMonastery;

	value						= Value_Ru_TeleportMonastery;

	description					= NAME_SPL_TeleportMonastery;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_TELEPORT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_TeleportFarm(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_TeleportFarm.3ds";
	material					= MAT_STONE;

	spell						= SPL_TeleportFarm;

	value						= Value_Ru_TeleportFarm;

	description					= NAME_SPL_TeleportFarm;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_TELEPORT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_TeleportXardas(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_TeleportXardas.3ds";
	material					= MAT_STONE;

	spell						= SPL_TeleportXardas;

	value						= Value_Ru_TeleportXardas;

	description					= NAME_SPL_TeleportXardas;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_TELEPORT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_TeleportPassNW(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_TeleportPassNW.3ds";
	material					= MAT_STONE;

	spell						= SPL_TeleportPassNW;

	value						= Value_Ru_TeleportPassNW;

	description					= NAME_SPL_TeleportPassNW;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_TELEPORT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_TeleportPassOW(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_TeleportPassOW.3ds";
	material					= MAT_STONE;

	spell						= SPL_TeleportPassOW;

	value						= Value_Ru_TeleportPassOW;

	description					= NAME_SPL_TeleportPassOW;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_TELEPORT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_TeleportOC(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_TeleportOC.3ds";
	material					= MAT_STONE;

	spell						= SPL_TeleportOC;

	value						= Value_Ru_TeleportOC;

	description					= NAME_SPL_TeleportOC;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_TELEPORT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/

instance ItRu_TeleportOWDemonTower(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_Teleport_2.3ds";
	material					= MAT_STONE;

	spell						= SPL_TeleportOWDemonTower;

	value						= Value_Ru_TeleportOWDemonTower;

	description					= NAME_SPL_TeleportOWDemonTower;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_TELEPORT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_TeleportTaverne(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_Teleport_2.3ds";
	material					= MAT_STONE;

	spell						= SPL_TeleportTaverne;

	value						= Value_Ru_TeleportTaverne;

	description					= NAME_SPL_TeleportTaverne;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_TELEPORT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Teleport_3(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_Teleport_3.3ds";
	material					= MAT_STONE;

	spell						= SPL_Teleport_3;

	value						= Value_Ru_Teleport_3;

	description					= NAME_SPL_Teleport_3;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_TELEPORT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Kreis 1
instance ItRu_Light(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_Light.3ds";
	material					= MAT_STONE;

	spell						= SPL_LIGHT;
	mag_circle					= 1;

	value						= Value_Ru_Light;

	description					= NAME_SPL_LIGHT;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_LIGHT;
	text[2]						= NAME_Duration;								count[2] = SPL_Duration_LIGHT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_FireBolt(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_YELLOW";

	visual						= "ItRu_FireBolt.3DS";
	material					= MAT_STONE;

	spell						= SPL_FIREBOLT;
	mag_circle					= 1;

	value						= Value_Ru_Firebolt;

	description					= NAME_SPL_Firebolt;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_FIREBOLT;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_FIREBOLT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Zap(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_Zap.3DS";
	material					= MAT_STONE;

	spell						= SPL_Zap;
	mag_circle					= 1;

	value						= Value_Ru_Zap;

	description					= NAME_SPL_Zap;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_Zap;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_ZAP;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_LightHeal(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_LightHeal.3ds";
	material					= MAT_STONE;

	spell						= SPL_LightHeal;
	mag_circle					= 1;

	value						= Value_Ru_LightHeal;

	description					= NAME_SPL_LightHeal;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_LightHeal;
	text[2]						= NAME_HealingPerCast;							count[2] = SPL_Heal_LightHeal;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_SumGobSkel(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_SumGobSkel.3DS";
	material					= MAT_STONE;

	spell						= SPL_SummonGoblinSkeleton;
	mag_circle					= 1;

	value						= Value_Ru_SumGobSkel;

	description					= NAME_SPL_SummonGoblinSkeleton;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_SummonGoblinSkeleton;
	text[2]						= "Die wandernden Knochen";						count[2] = 0;
	text[3]						= "der toten Goblins";							count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Kreis 2
instance ItRu_InstantFireball(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_YELLOW";

	visual						= "ItRu_InstantFireball.3DS";
	material					= MAT_STONE;

	spell						= SPL_InstantFireball;
	mag_circle					= 2;

	value						= Value_Ru_InstantFireball;

	description					= NAME_SPL_InstantFireball;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_InstantFireball;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_InstantFireball;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Icebolt(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_Icebolt.3ds";
	material					= MAT_STONE;

	spell						= SPL_Icebolt;
	mag_circle					= 2;

	value						= Value_Ru_Icebolt;

	description					= NAME_SPL_Icebolt;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_Icebolt;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_Icebolt;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_SumWolf(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_SumWolf.3DS";
	material					= MAT_STONE;

	spell						= SPL_SummonWolf;
	mag_circle					= 2;

	value						= Value_Ru_SumWolf;

	description					= NAME_SPL_SummonWolf;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_SummonWolf;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Windfist(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_Windfist.3ds";
	material					= MAT_STONE;

	spell						= SPL_WINDFIST;
	mag_circle					= 2;

	value						= Value_Ru_Windfist;

	description					= NAME_SPL_WINDFIST;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_MinManakosten;							count[1] = STEP_WindFist;
	text[2]						= NAME_ManakostenMax;							count[2] = SPL_COST_WINDFIST;
	text[3]						= NAME_Addon_Damage_Min;						count[3] = SPL_Damage_Windfist;
	text[4]						= NAME_Damage_Max;								count[4] = (SPL_Damage_Windfist * 4);
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Sleep(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_Sleep.3ds";
	material					= MAT_STONE;

	spell						= SPL_SLEEP;
	mag_circle					= 2;

	value						= Value_Ru_Sleep;

	description					= NAME_SPL_Sleep;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_SLEEP;
	text[2]						= NAME_SEC_Duration;							count[2] = SPL_TIME_Sleep;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Kreis 3
instance ItRu_MediumHeal(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_MediumHeal.3ds";
	material					= MAT_STONE;

	spell						= SPL_MediumHeal;
	mag_circle					= 3;

	value						= Value_Ru_MediumHeal;

	description					= NAME_SPL_MediumHeal;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_MediumHeal;
	text[2]						= NAME_HealingPerCast;							count[2] = SPL_Heal_MediumHeal;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_LightningFlash(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_LightningFlash.3DS";
	material					= MAT_STONE;

	spell						= SPL_LightningFlash;
	mag_circle					= 4;

	value						= Value_Ru_LightningFlash;

	description					= NAME_SPL_LightningFlash;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_LightningFlash;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_Damage_LightningFlash;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_ChargeFireball(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_YELLOW";

	visual						= "ItRu_ChargeFireball.3DS";
	material					= MAT_STONE;

	spell						= SPL_ChargeFireball;
	mag_circle					= 4;

	value						= Value_Ru_ChargeFireball;

	description					= NAME_SPL_ChargeFireball;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_MinManakosten;							count[1] = STEP_ChargeFireball;
	text[2]						= NAME_ManakostenMax;							count[2] = SPL_COST_ChargeFireball;
	text[3]						= NAME_Addon_Damage_Min;						count[3] = SPL_Damage_ChargeFireball;
	text[4]						= NAME_Damage_Max;								count[4] = (SPL_Damage_ChargeFireball * 4);
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_SumSkel(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_SumSkel.3DS";
	material					= MAT_STONE;

	spell						= SPL_SUMMONSKELETON;
	mag_circle					= 3;

	value						= Value_Ru_SumSkel;

	description					= NAME_SPL_SummonSkeleton;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_SUMMONSKELETON;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Fear(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_Fear.3DS";
	material					= MAT_STONE;

	spell						= SPL_FEAR;
	mag_circle					= 3;

	value						= Value_Ru_Fear;

	description					= NAME_SPL_Fear;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_FEAR;
	text[2]						= NAME_Sec_Duration;							count[2] = SPL_TIME_Fear;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_IceCube(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_IceCube.3ds";
	material					= MAT_STONE;

	spell						= SPL_ICECUBE;
	mag_circle					= 3;

	value						= Value_Ru_IceCube;

	description					= NAME_SPL_IceCube;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_ICECUBE;
	text[2]						= NAME_Damage;									count[2] = 60;
	text[3]						= NAME_Sec_Duration;							count[3] = SPL_TIME_FREEZE;
	text[4]						= NAME_DamagePerSec;							count[4] = SPL_FREEZE_DAMAGE;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Kreis 4
instance ItRu_ThunderBall(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_ThunderBall.3ds";
	material					= MAT_STONE;

	spell						= SPL_ChargeZap;
	mag_circle					= 3;

	value						= Value_Ru_ThunderBall;

	description					= NAME_SPL_ChargeZap;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_MinManakosten;							count[1] = STEP_ChargeZap;
	text[2]						= NAME_ManakostenMax;							count[2] = SPL_COST_ChargeZap;
	text[3]						= NAME_Addon_Damage_Min;						count[3] = SPL_Damage_ChargeZap;
	text[4]						= NAME_Damage_Max;								count[4] = (SPL_Damage_ChargeZap * 4);
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_SumGol(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_SumGol.3DS";
	material					= MAT_STONE;

	spell						= SPL_SummonGolem;
	mag_circle					= 4;

	value						= Value_Ru_SumGol;

	description					= NAME_SPL_SummonGolem;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_SummonGolem;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_HarmUndead(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_HarmUndead.3DS";
	material					= MAT_STONE;

	spell						= SPL_DESTROYUNDEAD;
	mag_circle					= 4;

	value						= Value_Ru_HarmUndead;

	description					= NAME_SPL_DestroyUndead;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_DESTROYUNDEAD;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_DESTROYUNDEAD;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Pyrokinesis(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_YELLOW";

	visual						= "ItRu_Pyrokinesis.3ds";
	material					= MAT_STONE;

	spell						= SPL_PYROKINESIS;
	mag_circle					= 5;

	value						= Value_Ru_Pyrokinesis;

	description					= NAME_SPL_Pyrokinesis;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_MinManakosten;							count[1] = STEP_Firestorm;
	text[2]						= NAME_ManakostenMax;							count[2] = SPL_COST_Firestorm;
	text[3]						= NAME_Addon_Damage_Min;						count[3] = SPL_Damage_Firestorm;
	text[4]						= NAME_Damage_Max;								count[4] = (SPL_Damage_Firestorm * 4);
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Kreis 5
instance ItRu_Firestorm(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_YELLOW";

	visual						= "ItRu_Firestorm.3ds";
	material					= MAT_STONE;

	spell						= SPL_FIRESTORM;
	mag_circle					= 3;

	value						= Value_Ru_Firestorm;

	description					= NAME_SPL_Firestorm;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_INSTANTFIRESTORM;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_INSTANTFIRESTORM;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_IceWave(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_BLUE";

	visual						= "ItRu_IceWave.3ds";
	material					= MAT_STONE;

	spell						= SPL_ICEWAVE;
	mag_circle					= 5;

	value						= Value_Ru_IceWave;

	description					= NAME_SPL_IceWave;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_IceWave;
	text[2]						= NAME_Damage;									count[2] = 60;
	text[3]						= NAME_Sec_Duration;							count[3] = SPL_TIME_FREEZE;
	text[4]						= NAME_DamagePerSec;							count[4] = SPL_FREEZE_DAMAGE;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_SumDemon(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_SumDemon.3DS";
	material					= MAT_STONE;

	spell						= SPL_SUMMONDEMON;
	mag_circle					= 5;

	value						= Value_Ru_SumDemon;

	description					= NAME_SPL_SummonDemon;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_SUMMONDEMON;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_FullHeal(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_FullHeal.3ds";
	material					= MAT_STONE;

	spell						= SPL_FullHeal;
	mag_circle					= 5;

	value						= Value_Ru_FullHeal;

	description					= NAME_SPL_FullHeal;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_Cost_FullHeal;
	text[2]						= NAME_HealingPerCast;							count[2] = SPL_Heal_FullHeal;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Kreis 6
instance ItRu_Firerain(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_YELLOW";

	visual						= "ItRu_Firerain.3ds";
	material					= MAT_STONE;

	spell						= SPL_FIRERAIN;
	mag_circle					= 6;

	value						= Value_Ru_Firerain;

	description					= NAME_SPL_Firerain;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_FIRERAIN;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_FIRERAIN;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_BreathOfDeath(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_BreathOfDeath.3ds";
	material					= MAT_STONE;

	spell						= SPL_BREATHOFDEATH;
	mag_circle					= 6;

	value						= Value_Ru_BreathOfDeath;

	description					= NAME_SPL_BreathOfDeath;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_BREATHOFDEATH;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_BREATHOFDEATH;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/

instance ItRu_MassDeath(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MISSION;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_MassDeath.3ds";
	material					= MAT_STONE;

	spell						= SPL_MASSDEATH;
	mag_circle					= 6;

	value						= Value_Ru_MassDeath;

	description					= NAME_SPL_MassDeath;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_MASSDEATH;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_MASSDEATH;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/

instance ItRu_MasterOfDisaster(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_MasterOfDesaster.3DS";
	material					= MAT_STONE;

	spell						= SPL_MasterOfDisaster;
	mag_circle					= 6;

	value						= Value_Ru_MasterOfDisaster;

	description					= NAME_SPL_MasterOfDisaster;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_MasterOfDisaster;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_MasterOfDisaster;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_ArmyOfDarkness(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER_RED";

	visual						= "ItRu_ArmyOfDarkness.3DS";
	material					= MAT_STONE;

	spell						= SPL_ARMYOFDARKNESS;
	mag_circle					= 6;

	value						= Value_Ru_ArmyofDarkness;

	description					= NAME_SPL_ArmyOfDarkness;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_ARMYOFDARKNESS;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
instance ItRu_Shrink(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_Shrink.3DS";
	material					= MAT_STONE;

	spell						= SPL_SHRINK;
	mag_circle					= 6;

	value						= Value_Ru_Shrink;

	description					= NAME_SPL_Shrink;
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_SHRINK;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/

// #########################
// NPC Spell
// #########################

instance ItRu_Deathbolt(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_PalRepelEvil.3DS";
	material					= MAT_STONE;

	spell						= SPL_Deathbolt;
	mag_circle					= 6;

	value						= 0;

	description					= "Deathbolt";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_Deathbolt;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_Deathbolt;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Deathball(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_PalRepelEvil.3DS";
	material					= MAT_STONE;

	spell						= SPL_Deathball;
	mag_circle					= 6;

	value						= 0;

	description					= "Deathball";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_Deathball;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_Deathball;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItRu_Concussionbolt(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItRu_PalRepelEvil.3DS";
	material					= MAT_STONE;

	spell						= SPL_Concussionbolt;
	mag_circle					= 6;

	value						= 0;

	description					= "Concussionbolt";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_COST_Concussionbolt;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_Concussionbolt;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};
