prototype Mst_Skeleton_Lord(C_NPC)
{
	// -------- NPC --------
	name							= "Schattenkrieger";
	guild							= GIL_SKELETON;
	level							= 40;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 105; // + 105 Waffe
	attribute[ATR_DEXTERITY]		= 100;
	attribute[ATR_HITPOINTS_MAX]	= 400;
	attribute[ATR_HITPOINTS]		= 400;
	attribute[ATR_MANA_MAX]			= 200;
	attribute[ATR_MANA]				= 200;

	// -------- protection --------
	protection[PROT_BLUNT]			= 100; // hat RS!
	protection[PROT_EDGE]			= 100;
	protection[PROT_POINT]			= 100;
	protection[PROT_FIRE]			= 100;
	protection[PROT_FLY]			= 100;
	protection[PROT_MAGIC]			= 0; // so lassen!

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
	aivar[AIV_MM_REAL_ID]			= ID_SKELETON;
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

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Zweihaender2);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//***************
//	Visuals
//***************

func void B_SetVisuals_Skeleton_Lord()
{
	Mdl_SetVisual(self, "HumanS.mds");
	// Mdl_ApplyOverlayMDS(self, "humans_skeleton.mds"); // FIXME s.Skeleton.
	Mdl_ApplyOverlayMDS(self, "humans_1hST1.mds");
	Mdl_ApplyOverlayMDS(self, "humans_2hST2.mds");
	Mdl_ApplyOverlayMDS(self, "humans_BowT1.mds");
	Mdl_ApplyOverlayMDS(self, "humans_CBowT1.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	B_SetNpcVisual(self, MALE, "Ske_Head", 0, 0, ITAR_PAL_SKEL);
};

//**************************************************************
//	Schattenlord
//**************************************************************

instance Skeleton_Lord(Mst_Skeleton_Lord)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton_Lord();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//**************************************************************
//	Schattenlord Inubis
//**************************************************************

instance Crypt_Skeleton_Lord(Mst_Skeleton_Lord)
{
	// -------- NPC --------
	name							= "Schattenlord Inubis";

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton_Lord();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItMi_Gold, 500);
	CreateInvItems(self, ItPo_Mana_03, 2);
	CreateInvItems(self, ItPo_Health_03, 2);

	// -------- daily routine --------
};

//**************************************************************
//	Schattenlord Archol // Joly: Endgegner auf der DI
//**************************************************************

instance Skeleton_Lord_Archol(Mst_Skeleton_Lord)
{
	// -------- NPC --------
	name							= "Schattenlord Archol";
	level							= 60;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 150;
	attribute[ATR_DEXTERITY]		= 150;
	attribute[ATR_HITPOINTS_MAX]	= 400;
	attribute[ATR_HITPOINTS]		= 400;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 10;
	protection[PROT_EDGE]			= 20;
	protection[PROT_POINT]			= 1000;
	protection[PROT_FIRE]			= 10;
	protection[PROT_FLY]			= 10;
	protection[PROT_MAGIC]			= 10;

	// -------- visuals --------
	B_SetVisuals_Skeleton_Lord();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItMi_Gold, 650);
	CreateInvItems(self, ItKe_EVT_UNDEAD_01, 1);

	// -------- daily routine --------
};
