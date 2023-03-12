//*************************
//	Warg prototype
//*************************

prototype Mst_Default_Warg(C_Npc)
{
	// -------- NPC --------
	name							= "Warg";
	guild							= GIL_WOLF;
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
	aivar[AIV_MM_REAL_ID]			= ID_WARG;
	aivar[AIV_MM_ThreatenBeforeAttack]= TRUE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_Packhunter]		= TRUE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_WOLF;
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

func void B_SetVisuals_WARG()
{
	Mdl_SetVisual(self, "Wolf.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Warg_Body2",			DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

func void B_SetVisuals_BLACKWOLF()
{
	Mdl_SetVisual(self, "Wolf.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Warg_Body",			DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//************
//	Warg
//************

instance Warg(Mst_Default_Warg)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Warg();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};

//**********************************************
//	Schwarzer Wolf (MIS)
//*********************************************

instance BlackWolf(Mst_Default_Warg)
{
	// -------- NPC --------
	name							= "Schwarzer Wolf";
	level							= 6;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 20;
	attribute[ATR_HITPOINTS_MAX]	= 120;
	attribute[ATR_HITPOINTS]		= 120;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 12;
	protection[PROT_EDGE]			= 12;
	protection[PROT_POINT]			= 12;
	protection[PROT_FIRE]			= 12;
	protection[PROT_FLY]			= 12;
	protection[PROT_MAGIC]			= 12;

	// -------- visuals --------
	B_SetVisuals_BLACKWOLF();

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_WOLF;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};
