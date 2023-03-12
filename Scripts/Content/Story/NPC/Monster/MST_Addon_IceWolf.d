//*************************
//	Eiswolf prototype
//*************************

prototype Mst_Default_Icewolf(C_Npc)
{
	// -------- NPC --------
	name							= "Eiswolf";
	guild							= GIL_WOLF;
	level							= 15;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 150;
	attribute[ATR_DEXTERITY]		= 150;
	attribute[ATR_HITPOINTS_MAX]	= 300;
	attribute[ATR_HITPOINTS]		= 300;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 150;
	protection[PROT_EDGE]			= 150;
	protection[PROT_POINT]			= 100;
	protection[PROT_FIRE]			= 150;
	protection[PROT_FLY]			= 150;
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
	aivar[AIV_MM_REAL_ID]			= ID_Icewolf;
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

func void B_SetVisuals_Icewolf()
{
	Mdl_SetVisual(self, "Wolf.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"SnoWol_Body",			DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//************
//	Eiswolf
//************

instance Icewolf(Mst_Default_Icewolf)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Icewolf();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};
