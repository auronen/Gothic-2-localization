//************************************
//	Shadowbeast-Skeleton prototype
//************************************

prototype Mst_Default_Shadowbeast_Skeleton(C_Npc)
{
	// -------- NPC --------
	name							= "Schattenläuferskelett";
	guild							= GIL_SHADOWBEAST_SKELETON;
	level							= 40;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 200;
	attribute[ATR_DEXTERITY]		= 200;
	attribute[ATR_HITPOINTS_MAX]	= 400;
	attribute[ATR_HITPOINTS]		= 400;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 150;
	protection[PROT_EDGE]			= 150;
	protection[PROT_POINT]			= 200;
	protection[PROT_FIRE]			= 150;
	protection[PROT_FLY]			= 150;
	protection[PROT_MAGIC]			= 20;

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
	aivar[AIV_MM_REAL_ID]			= ID_SHADOWBEAST_SKELETON;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_SHADOWBEAST;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//************
//	Visuals
//************

func void B_SetVisuals_Shadowbeast_Skeleton()
{
	Mdl_SetVisual(self, "Shadow.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Shadowbeast_Skeleton_Body",DEFAULT,DEFAULT,"",					DEFAULT,	DEFAULT,	-1);
};

//*****************************
//	Shadowbeast_Skeleton
//*****************************

instance Shadowbeast_Skeleton(Mst_Default_Shadowbeast_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Shadowbeast_Skeleton();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//*****************************
//	Shadowbeast_Skeleton_Angar
//*****************************

instance Shadowbeast_Skeleton_Angar(Mst_Default_Shadowbeast_Skeleton)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Shadowbeast_Skeleton();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
