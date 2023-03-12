//***************************
//	Shadowbeast prototype
//***************************

prototype Mst_Default_Shadowbeast(C_Npc)
{
	// -------- NPC --------
	name							= "Schattenläufer";
	guild							= GIL_SHADOWBEAST;
	level							= 30;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 150;
	attribute[ATR_DEXTERITY]		= 150;
	attribute[ATR_HITPOINTS_MAX]	= 300;
	attribute[ATR_HITPOINTS]		= 300;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 125;
	protection[PROT_EDGE]			= 125;
	protection[PROT_POINT]			= 75;
	protection[PROT_FIRE]			= 125;
	protection[PROT_FLY]			= 125;
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
	aivar[AIV_MM_REAL_ID]			= ID_SHADOWBEAST;
	aivar[AIV_MM_ThreatenBeforeAttack]= TRUE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_SleepStart]		= 6;
	aivar[AIV_MM_SleepEnd]			= 20;
	aivar[AIV_MM_RoamStart]			= 20;
	aivar[AIV_MM_RoamEnd]			= 6;

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

//***************
//	Visuals
//***************

func void B_SetVisuals_Shadowbeast()
{
	Mdl_SetVisual(self, "Shadow.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Sha_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//*******************
//	Shadowbeast
//*******************

instance Shadowbeast(Mst_Default_Shadowbeast)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Shadowbeast();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 2);

	// -------- daily routine --------
};

// Addon

instance BeachShadowbeast1(Mst_Default_Shadowbeast)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Shadowbeast();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 2);

	// -------- daily routine --------
};
