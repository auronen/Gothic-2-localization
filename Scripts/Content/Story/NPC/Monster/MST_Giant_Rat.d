//*************************
//	Giant_Rat prototype
//*************************

prototype Mst_Default_Giant_Rat(C_Npc)
{
	// -------- NPC --------
	name							= "Riesenratte";
	guild							= GIL_Giant_Rat;
	level							= 3;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_HITPOINTS_MAX]	= 30;
	attribute[ATR_HITPOINTS]		= 30;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 15;
	protection[PROT_EDGE]			= 15;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 15;
	protection[PROT_FLY]			= 15;
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
	aivar[AIV_MM_REAL_ID]			= ID_Giant_Rat;
	aivar[AIV_MM_ThreatenBeforeAttack]= TRUE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_Packhunter]		= TRUE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_GIANT_RAT;
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

func void B_SetVisuals_Giant_Rat()
{
	Mdl_SetVisual(self, "Giant_Rat.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Giant_Rat_Body",		DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//***************
//	Giant_Rat
//***************

instance Giant_Rat(Mst_Default_Giant_Rat)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Giant_Rat();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};

//**************************************
//	junge Giant_Rat (für Spielstart)
//**************************************

instance YGiant_Rat(Mst_Default_Giant_Rat)
{
	// -------- NPC --------
	name							= "junge Riesenratte";
	level							= 3;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 5;
	attribute[ATR_DEXTERITY]		= 5;
	attribute[ATR_HITPOINTS_MAX]	= 10;
	attribute[ATR_HITPOINTS]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 5;
	protection[PROT_EDGE]			= 5;
	protection[PROT_POINT]			= 5;
	protection[PROT_FIRE]			= 5;
	protection[PROT_FLY]			= 5;
	protection[PROT_MAGIC]			= 0;

	// -------- visuals --------
	B_SetVisuals_Giant_Rat();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);

	// -------- fight tactic --------
	fight_tactic = FAI_MONSTER_COWARD;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};
