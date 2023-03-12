//**************************
//	Skeleton-Mage prototype
//**************************

prototype Mst_Default_Skeleton_Mage(C_Npc)
{
	// -------- NPC --------
	name							= "Skelettmagier";
	guild							= GIL_SKELETON_MAGE;
	level							= 30;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 150;
	attribute[ATR_DEXTERITY]		= 150;
	attribute[ATR_HITPOINTS_MAX]	= 300;
	attribute[ATR_HITPOINTS]		= 300;
	attribute[ATR_MANA_MAX]			= 200;
	attribute[ATR_MANA]				= 200;

	// -------- protection --------
	protection[PROT_BLUNT]			= 125;
	protection[PROT_EDGE]			= 125;
	protection[PROT_POINT]			= 175;
	protection[PROT_FIRE]			= 125;
	protection[PROT_FLY]			= 125;
	protection[PROT_MAGIC]			= 50;

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
	aivar[AIV_MM_REAL_ID]			= ID_SKELETON_MAGE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//*************
//	Visuals
//*************

func void B_SetVisuals_Skeleton_Mage()
{
	Mdl_SetVisual(self, "HumanS.mds");
	Mdl_ApplyOverlayMDS(self, "humans_skeleton_fly.mds");

	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Ske_Fly_Body",			1,		DEFAULT,	"",					1,			DEFAULT,	-1);
};

//*********************
//	Skeleton Mage
//*********************

instance SkeletonMage(Mst_Default_Skeleton_Mage)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton_Mage();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//*********************
//	SkeletonMage_Angar
//*********************

instance SkeletonMage_Angar(Mst_Default_Skeleton_Mage)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton_Mage();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItAm_Mana_Angar_MIS, 1);
	CreateInvItems(self, ItPo_Perm_Mana, 1);

	// -------- daily routine --------
};

//************************
//	SecretLibrarySkeleton
//***********************

instance SecretLibrarySkeleton(Mst_Default_Skeleton_Mage)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton_Mage();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
