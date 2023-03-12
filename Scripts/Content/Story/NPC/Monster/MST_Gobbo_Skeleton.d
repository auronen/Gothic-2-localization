//***************************
//	Gobbo-Skeleton prototype
//***************************

prototype Mst_Default_Gobbo_Skeleton(C_NPC)
{
	// -------- NPC --------
	name							= "Goblin Skelett";
	guild							= GIL_GOBBO_SKELETON;
	level							= 15;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 75;
	attribute[ATR_DEXTERITY]		= 75;
	attribute[ATR_HITPOINTS_MAX]	= 75;
	attribute[ATR_HITPOINTS]		= 75;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 75;
	protection[PROT_EDGE]			= 75;
	protection[PROT_POINT]			= 125;
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
	aivar[AIV_MM_REAL_ID]			= ID_GOBBO_SKELETON;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_GOBBO;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//***************
//	Visuals
//***************

func void B_SetVisuals_Gobbo_Skeleton()
{
	Mdl_SetVisual(self, "Gobbo.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Gobbo_Skeleton_Body",	DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//**********************
//	Gobbo_Skeleton
//**********************

instance Gobbo_Skeleton(Mst_Default_Gobbo_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Gobbo_Skeleton();

	Npc_SetToFightMode(self, ItMw_1h_Bau_Mace); // Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//***************************
//	Summoned_Gobbo_Skeleton
//***************************

instance Summoned_Gobbo_Skeleton(Mst_Default_Gobbo_Skeleton)
{
	// -------- NPC --------
	name							= "Beschworenes Skelett";
	guild							= GIL_SUMMONED_GOBBO_SKELETON;
	level							= 0;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Gobbo_Skeleton();

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONED_GOBBO_SKELETON;
	aivar[AIV_PARTYMEMBER]			= TRUE;

	B_SetAttitude(self, ATT_FRIENDLY);
	Npc_SetToFightMode(self, ItMw_1H_Bau_Mace); // Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_Summoned;
};

//************************************
//	Gobbo_Skeleton im OW Dämonenturm
//************************************
instance Gobbo_SkeletonOWDemonTower(Mst_Default_Gobbo_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Gobbo_Skeleton();

	Npc_SetToFightMode(self, ItMw_1h_Bau_Mace); // Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
