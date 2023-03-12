// ************************************************************************************************
// Wert von Tiertrophäen
// ************************************************************************************************

// Addon
const int Value_BCKopf = 50;

const int Value_Meatbugflesh = 10;
const int Value_SheepFur = 10;
const int Value_WolfFur = 10;
const int Value_BugMandibles = 15;
const int Value_Claw = 15;
const int Value_LurkerClaw = 15;
const int Value_Teeth = 15;
const int Value_CrawlerMandibles = 15;
const int Value_Wing = 20;
const int Value_Sting = 25;
const int Value_ReptileSkin = 25;
const int Value_WargFur = 25;
const int Value_DrgSnapperHorn = 100;
const int Value_CrawlerPlate = 50;
const int Value_ShadowFur = 250;
const int Value_SharkSkin = 200;
const int Value_TrollFur = 300;
const int Value_WaranFiretongue = 300;
const int Value_ShadowHorn = 300;
const int Value_SharkTeeth = 300;
const int Value_TrollTooth = 300;
const int Value_TrollBlackFur = 350;

const int Value_GoblinBone = 10;
const int Value_SkeletonBone = 10;
const int Value_DemonHeart = 300;
const int Value_StoneGolemHeart = 300;
const int Value_FireGolemHeart = 300;
const int Value_IceGolemHeart = 300;

const int Value_UndeadDragonSoulStone = 400;
const int Value_IcedragonHeart = 400;
const int Value_FiredragonHeart = 400;
const int Value_SwampdragonHeart = 400;
const int Value_RockdragonHeart = 400;

const int Value_DragonBlood = 200;
const int Value_DragonScale = 200;

const int Value_Keilerfur = 15;
/*****************ADDON*************************************************************************/
instance ItAt_Addon_BCKopf(C_Item)
{
	name						= "Kopf";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Blattcrawler_01.3DS";
	material					= MAT_LEATHER;

	value						= Value_BCKopf;

	description					= "Kopf der Fangheuschrecke";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_Meatbugflesh(C_Item)
{
	name						= "Wanzenfleisch";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Meatbugflesh.3DS";
	material					= MAT_LEATHER;

	scemeName					= "FOODHUGE";
	on_state[0]					= Use_Meatbugflesh;

	value						= Value_Meatbugflesh;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = 10;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_Meatbugflesh()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, 10);
};

/******************************************************************************************/
instance ItAt_SheepFur(C_Item)
{
	name						= "Schafsfell";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_SheepFur.3DS";
	material					= MAT_LEATHER;

	value						= Value_SheepFur;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_WolfFur(C_Item)
{
	name						= "Wolfsfell";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_WolfFur.3DS";
	material					= MAT_LEATHER;

	value						= Value_WolfFur;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_BugMandibles(C_Item)
{
	name						= "Feldräuberzangen";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_BugMandibles.3DS";
	material					= MAT_LEATHER;

	value						= Value_BugMandibles;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_Claw(C_Item)
{
	name						= "Krallen";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Claw.3DS";
	material					= MAT_LEATHER;

	value						= Value_Claw;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_LurkerClaw(C_Item)
{
	name						= "Lurker Klaue";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_LurkerClaw.3DS";
	material					= MAT_LEATHER;

	value						= Value_LurkerClaw;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_Teeth(C_Item)
{
	name						= "Zähne";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Teeth.3DS";
	material					= MAT_LEATHER;

	value						= Value_Teeth;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_CrawlerMandibles(C_Item)
{
	name						= "Minecrawlerzangen";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_CrawlerMandibles.3DS";
	material					= MAT_LEATHER;

	scemeName					= "FOOD";
	on_state[0]					= Use_Mandibles;

	value						= Value_CrawlerMandibles;

	description					= name;
	text[0]						= "Die Zangen können aufgebrochen, ";			count[0] = 0;
	text[1]						= "und das Sekret darin geschlürft werden.";	count[1] = 0;
	text[2]						= "Es regeniert die magische Kraft.";			count[2] = 0;
	text[3]						= "Verliert mit der Zeit seine Wirkung.";		count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_Mandibles()
{
	if (Mandibles_Bonus <= 9)
	{
		Npc_ChangeAttribute(self, ATR_MANA, self.attribute[ATR_MANA_MAX]);

		Mandibles_Bonus = (Mandibles_Bonus + 1);
	}
	else
	{
		PrintScreen(PRINT_Mandibles, -1, YPOS_LEVELUP, FONT_ScreenSmall, 2);
	};
};

/******************************************************************************************/
instance ItAt_Wing(C_Item)
{
	name						= "Flügel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Wing.3DS";
	material					= MAT_LEATHER;

	value						= Value_Wing;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_Sting(C_Item)
{
	name						= "Stachel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Sting.3DS";
	material					= MAT_LEATHER;

	scemeName					= "FOOD";
	on_state[0]					= Use_Sting;

	value						= Value_Sting;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "Der Stachel";								count[1] = 0;
	text[2]						= "enthält ein giftiges Sekret";				count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_Sting()
{
	if (Knows_Bloodfly == TRUE)
	{
		if (Bloodfly_Bonus <= 10)
		{
			Npc_ChangeAttribute(self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]);
			Print(PRINT_FullyHealed);

			Bloodfly_Bonus = (Bloodfly_Bonus + 1);
		}
		else
		{
			Print(PRINT_Mandibles);
		};
	}
	else
	{
		Print(PRINT_Bloodfly);

		if (self.attribute[ATR_HITPOINTS] > 1)
		{
			self.attribute[ATR_HITPOINTS] = (self.attribute[ATR_HITPOINTS] - 1);
		};
	};
};

/******************************************************************************************/
instance itat_LurkerSkin(C_Item) // REPTILE Skin
{
	name						= "Reptilienhaut";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_LurkerSkin.3DS";
	material					= MAT_LEATHER;

	value						= Value_ReptileSkin;

	description					= "Die Haut eines Reptils";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_WargFur(C_Item)
{
	name						= "Wargfell";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_WargFur.3DS";
	material					= MAT_LEATHER;

	value						= Value_WargFur;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_Addon_KeilerFur(C_Item)
{
	name						= "Keilerfell";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_WargFur.3DS";
	material					= MAT_LEATHER;

	value						= Value_KeilerFur;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_DrgSnapperHorn(C_Item)
{
	name						= "Horn eines DrachenSnappers";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_DrgSnapperHorn.3DS";
	material					= MAT_LEATHER;

	value						= Value_DrgSnapperHorn;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_CrawlerPlate(C_Item)
{
	name						= "Minecrawler Panzerplatten";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_CrawlerPlate.3DS";
	material					= MAT_LEATHER;

	value						= Value_CrawlerPlate;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_ShadowFur(C_Item)
{
	name						= "Fell eines Schattenläufers";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_ShadowFur.3DS";
	material					= MAT_LEATHER;

	value						= Value_ShadowFur;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_SharkSkin(C_Item)
{
	name						= "Haut eines Sumpfhais";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_SharkSkin.3DS";
	material					= MAT_LEATHER;

	value						= Value_SharkSkin;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_TrollFur(C_Item)
{
	name						= "Trollfell";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_TrollFur.3DS";
	material					= MAT_LEATHER;

	value						= Value_TrollFur;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_TrollBlackFur(C_Item)
{
	name						= "Fell eines schwarzen Trolls";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_TrollFur.3DS";
	material					= MAT_LEATHER;

	value						= Value_TrollBlackFur;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_WaranFiretongue(C_Item)
{
	name						= "Flammenzunge";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_WaranFiretongue.3DS";
	material					= MAT_LEATHER;

	value						= Value_WaranFiretongue;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_ShadowHorn(C_Item)
{
	name						= "Horn eines Schattenläufers";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_ShadowHorn.3DS";
	material					= MAT_LEATHER;

	value						= Value_ShadowHorn;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_SharkTeeth(C_Item)
{
	name						= "Zähne eines Sumpfhais";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_SharkTeeth.3DS";
	material					= MAT_LEATHER;

	value						= Value_SharkTeeth;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_TrollTooth(C_Item)
{
	name						= "Trollhauer";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_TrollTooth.3DS";
	material					= MAT_LEATHER;

	value						= Value_TrollTooth;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
};

/******************************************************************************************/
instance ItAt_StoneGolemHeart(C_Item)
{
	name						= "Herz eines Steingolems";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItAt_StoneGolemHeart.3DS";
	material					= MAT_STONE;

	// spell					= SPL_WINDFIST;

	value						= Value_StoneGolemHeart;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_FireGolemHeart(C_Item)
{
	name						= "Herz eines Feuergolems";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItAt_FireGolemHeart.3DS";
	material					= MAT_STONE;

	// spell					= SPL_FIREBALL;

	value						= Value_FireGolemHeart;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_IceGolemHeart(C_Item)
{
	name						= "Herz eines Eisgolems";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItAt_IceGolemHeart.3DS";
	material					= MAT_STONE;

	// spell					= SPL_ICECUBE;

	value						= Value_IceGolemHeart;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_GoblinBone(C_Item)
{
	name						= "Knochen eines Goblins";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_GoblinBone.3DS";
	material					= MAT_WOOD;

	value						= Value_GoblinBone;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_SkeletonBone(C_Item)
{
	name						= "Knochen eines Skeletts";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_SkeletonBone.3DS";
	material					= MAT_WOOD;

	value						= Value_SkeletonBone;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_DemonHeart(C_Item)
{
	name						= "Herz eines Dämonen";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_DemonHeart.3DS";
	material					= MAT_LEATHER;

	value						= Value_DemonHeart;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//**************************************************************************
//					Drachentrophäen
//**************************************************************************
instance ItAt_UndeadDragonSoulStone(C_Item)
{
	name						= "Seelenstein des Untoten Drachens";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItAt_UndeadDragonSoulStone.3DS";
	material					= MAT_LEATHER;

	value						= Value_UndeadDragonSoulStone;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_MISC_STANDARD;
};

/******************************************************************************************/
instance ItAt_IcedragonHeart(C_Item)
{
	name						= "Herz eines Eisdrachen";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItAt_IcedragonHeart.3DS";
	material					= MAT_LEATHER;

	value						= Value_IcedragonHeart;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_RockdragonHeart(C_Item)
{
	name						= "Herz eines Felsdrachen";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItAt_RockdragonHeart.3DS";
	material					= MAT_LEATHER;

	value						= Value_RockdragonHeart;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_SwampdragonHeart(C_Item)
{
	name						= "Herz eines Sumpfdrachens";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItAt_SwampdragonHeart.3DS";
	material					= MAT_LEATHER;

	value						= Value_SwampdragonHeart;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_FiredragonHeart(C_Item)
{
	name						= "Herz eines Feuerdrachen";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItAt_FiredragonHeart.3DS";
	material					= MAT_LEATHER;

	value						= Value_FiredragonHeart;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAt_DragonBlood(C_Item)
{
	name						= "Drachenblut";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItAt_DragonBlood.3DS";
	material					= MAT_LEATHER;

	value						= Value_DragonBlood;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_MISC_STANDARD;
};

/******************************************************************************************/
instance ItAt_DragonScale(C_Item)
{
	name						= "Drachenschuppen";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_DragonScale.3DS";
	material					= MAT_STONE;

	value						= Value_DragonScale;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
