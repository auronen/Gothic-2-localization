//*************************
//	Giant_DesertRat prototype
//*************************

prototype Mst_Default_Giant_DesertRat(C_Npc)
{
	// -------- NPC --------
	name							= "Wüstenratte";
	guild							= GIL_Giant_Rat;
	level							= 10;

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
	protection[PROT_POINT]			= 25;
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

func void B_SetVisuals_Giant_DesertRat()
{
	Mdl_SetVisual(self, "Giant_Rat.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Giant_DesertRat_Body",	DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
	Mdl_SetModelScale(self, 1.30, 1.30, 1);
};

//***************
//	Giant_DesertRat
//***************

instance Giant_DesertRat(Mst_Default_Giant_DesertRat)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Giant_DesertRat();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};
