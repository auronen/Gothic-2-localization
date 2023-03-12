//*****************************
//	Minecrawler prototype
//*****************************

prototype Mst_Default_Blattcrawler(C_Npc)
{
	// -------- NPC --------
	name							= "Fangheuschrecke";
	guild							= GIL_MINECRAWLER;
	level							= 15;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 75;
	attribute[ATR_DEXTERITY]		= 75;
	attribute[ATR_HITPOINTS_MAX]	= 150;
	attribute[ATR_HITPOINTS]		= 150;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 75;
	protection[PROT_EDGE]			= 75;
	protection[PROT_POINT]			= 75;
	protection[PROT_FIRE]			= 75;
	protection[PROT_FLY]			= 75;
	protection[PROT_MAGIC]			= 0;

	// -------- damage --------
	damageType						= DAM_EDGE;
	//	damage[DAM_INDEX_BLUNT]		= 0;
	//	damage[DAM_INDEX_EDGE]		= 0;
	//	damage[DAM_INDEX_POINT]		= 0;
	//	damage[DAM_INDEX_FIRE]		= 0;
	//	damage[DAM_INDEX_FLY]		= 0;
	//	damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_BLATTCRAWLER;
	aivar[AIV_MM_ThreatenBeforeAttack]= TRUE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_WuselStart]		= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_MINECRAWLER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//***********
// Visuals
//***********

func void B_SetVisuals_Blattcrawler()
{
	Mdl_SetVisual(self, "Blattcrawler.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"BlattCrawler_Body",	DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//*****************
//	Minecrawler
//*****************

instance Blattcrawler(Mst_Default_Blattcrawler)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Blattcrawler();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
