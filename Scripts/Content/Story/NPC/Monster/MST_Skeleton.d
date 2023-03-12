//************************
//	Skeleton prototype
//************************

prototype Mst_Default_Skeleton(C_Npc)
{
	// -------- NPC --------
	name							= "Skelett";
	guild							= GIL_SKELETON;
	level							= 30;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 100; // +50 Waffe
	attribute[ATR_DEXTERITY]		= 150;
	attribute[ATR_HITPOINTS_MAX]	= 150;
	attribute[ATR_HITPOINTS]		= 150;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 125;
	protection[PROT_EDGE]			= 125;
	protection[PROT_POINT]			= 175;
	protection[PROT_FIRE]			= 125;
	protection[PROT_FLY]			= 125;
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

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//***************
//	Visuals
//***************

func void B_SetVisuals_Skeleton()
{
	Mdl_SetVisual(self, "HumanS.mds");
	Mdl_ApplyOverlayMDS(self, "humans_1hST1.mds");
	Mdl_ApplyOverlayMDS(self, "humans_2hST2.mds");
	Mdl_ApplyOverlayMDS(self, "humans_BowT1.mds");
	Mdl_ApplyOverlayMDS(self, "humans_CBowT1.mds");
	Mdl_ApplyOverlayMDS(self, "humans_skeleton.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Ske_Body2",			DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

func void B_SetVisuals_Lesser_Skeleton()
{
	Mdl_SetVisual(self, "HumanS.mds");
	Mdl_ApplyOverlayMDS(self, "humans_1hST1.mds");
	Mdl_ApplyOverlayMDS(self, "humans_2hST2.mds");
	Mdl_ApplyOverlayMDS(self, "humans_BowT1.mds");
	Mdl_ApplyOverlayMDS(self, "humans_CBowT1.mds");
	Mdl_ApplyOverlayMDS(self, "humans_skeleton.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Ske_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//**************
//	Skeleton
//**************

instance Skeleton(Mst_Default_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Sword_M_01);

	// -------- daily routine --------
};

//**************
//	Skeleton
//**************

instance Summoned_Skeleton(Mst_Default_Skeleton)
{
	// -------- NPC --------
	name							= "Beschworenes Skelett";
	guild							= GIL_SUMMONED_SKELETON;
	level							= 0; // 30

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 100; // +50 Waffe
	attribute[ATR_DEXTERITY]		= 150;
	attribute[ATR_HITPOINTS_MAX]	= 150;
	attribute[ATR_HITPOINTS]		= 150;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 125;
	protection[PROT_EDGE]			= 125;
	protection[PROT_POINT]			= 175;
	protection[PROT_FIRE]			= 125;
	protection[PROT_FLY]			= 125;

	// -------- visuals --------
	B_SetVisuals_Lesser_Skeleton();
	B_SetVisuals_Lesser_Skeleton();

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONED_SKELETON;
	aivar[AIV_PARTYMEMBER]			= TRUE;

	B_SetAttitude(self, ATT_FRIENDLY);

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Sword_M_01);
	// EquipItem(self, ItRw_Sld_Bow); // FIXME Carsten: Bogen schießt beim Skelett in Zeitlupe...

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_Summoned;
};

//**************
//	Lesser Skeleton
//**************

instance Lesser_Skeleton(Mst_Default_Skeleton)
{
	// -------- NPC --------
	name							= "Niederes Skelett";
	level							= 15;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 45; // +30 Waffe
	attribute[ATR_DEXTERITY]		= 75;
	attribute[ATR_HITPOINTS_MAX]	= 150;
	attribute[ATR_HITPOINTS]		= 150;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 80;
	protection[PROT_EDGE]			= 80;
	protection[PROT_POINT]			= 130;
	protection[PROT_FIRE]			= 80;
	protection[PROT_FLY]			= 80;

	// -------- visuals --------
	B_SetVisuals_Lesser_Skeleton();

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_MISC_Sword);

	// -------- daily routine --------
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 	Story Skeletons
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//**************
//	Crypt-Skeletons
//**************

instance Crypt_Skeleton_Room_01(Mst_Default_Skeleton)
{
	// -------- NPC --------
	name							= "Krypta-Wächter";

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItem(self, ItKe_EVT_CRYPT_01);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_MISC_Sword);

	// -------- daily routine --------
};

instance Crypt_Skeleton_Room_02(Mst_Default_Skeleton)
{
	// -------- NPC --------
	name							= "Krypta-Wächter";

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItem(self, ItKe_EVT_CRYPT_02);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Sword_M_01);

	// -------- daily routine --------
};

instance Crypt_Skeleton_Room_03(Mst_Default_Skeleton)
{
	// -------- NPC --------
	name							= "Krypta-Wächter";

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItem(self, ItKe_EVT_CRYPT_03);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_MISC_Sword);

	// -------- daily routine --------
};

//****************************
//	Archols-Skeletons auf DI
//****************************

instance Skeleton_Archol1(Mst_Default_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_MISC_Sword);

	// -------- daily routine --------
};

instance Skeleton_Archol2(Mst_Default_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Sword_M_01);

	// -------- daily routine --------
};

instance Skeleton_Archol3(Mst_Default_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_MISC_Sword);

	// -------- daily routine --------
};

instance Skeleton_Archol4(Mst_Default_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Sword_M_01);

	// -------- daily routine --------
};

instance Skeleton_Archol5(Mst_Default_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_MISC_Sword);

	// -------- daily routine --------
};

instance Skeleton_Archol6(Mst_Default_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Sword_M_01);

	// -------- daily routine --------
};

//****************************
//	Marios-Skeletons auf DI
//****************************

instance Skeleton_Mario1(Mst_Default_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_MISC_Sword);

	// -------- daily routine --------
};

instance Skeleton_Mario2(Mst_Default_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Sword_M_01);

	// -------- daily routine --------
};

instance Skeleton_Mario3(Mst_Default_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_MISC_Sword);

	// -------- daily routine --------
};

instance Skeleton_Mario4(Mst_Default_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Skeleton();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Sword_M_01);

	// -------- daily routine --------
};
