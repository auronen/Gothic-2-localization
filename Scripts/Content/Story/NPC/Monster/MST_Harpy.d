//**************************
//	Harpie prototype
//**************************

prototype Mst_Default_Harpie(C_Npc)
{
	// -------- NPC --------
	name							= "Harpie";
	guild							= GIL_HARPY;
	level							= 18;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 90;
	attribute[ATR_DEXTERITY]		= 90;
	attribute[ATR_HITPOINTS_MAX]	= 180;
	attribute[ATR_HITPOINTS]		= 180;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;

	// -------- protection --------
	protection[PROT_BLUNT]			= 90;
	protection[PROT_EDGE]			= 90;
	protection[PROT_POINT]			= 40;
	protection[PROT_FIRE]			= 90;
	protection[PROT_FLY]			= 90;
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
	aivar[AIV_MM_REAL_ID]			= ID_HARPY;
	aivar[AIV_MM_ThreatenBeforeAttack]= TRUE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_HARPY;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//**************
//	Visuals
//**************

func void B_SetVisuals_Harpie()
{
	Mdl_SetVisual(self, "Harpie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Har_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//************
//	Harpie
//************

instance Harpie(Mst_Default_Harpie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Harpie();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
