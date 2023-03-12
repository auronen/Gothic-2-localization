//**************************
//	Scavenger prototype
//**************************

prototype Mst_Default_Scavenger(C_Npc)
{
	// -------- NPC --------
	name							= "Scavenger";
	guild							= GIL_SCAVENGER;
	level							= 7;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 35;
	attribute[ATR_DEXTERITY]		= 35;
	attribute[ATR_HITPOINTS_MAX]	= 70;
	attribute[ATR_HITPOINTS]		= 70;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 35;
	protection[PROT_EDGE]			= 35;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 35;
	protection[PROT_FLY]			= 35;
	protection[PROT_MAGIC]			= 0;

	// -------- damage --------
	damageType						= DAM_EDGE;
	// damage[DAM_INDEX_BLUNT]		= 0;
	// damage[DAM_INDEX_EDGE]		= 30;
	// damage[DAM_INDEX_POINT]		= 0;
	// damage[DAM_INDEX_FIRE]		= 0;
	// damage[DAM_INDEX_FLY]		= 0;
	// damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_SCAVENGER;
	aivar[AIV_MM_ThreatenBeforeAttack]= TRUE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_SleepStart]		= 22;
	aivar[AIV_MM_SleepEnd]			= 6;
	aivar[AIV_MM_EatGroundStart]	= 6;
	aivar[AIV_MM_EatGroundEnd]		= 22;

	// -------- fight tactic --------
	fight_tactic = FAI_SCAVENGER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//****************
//	Visuals
//****************

func void B_SetVisuals_Scavenger()
{
	Mdl_SetVisual(self, "Scavenger.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Sca_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//***************
//	Scavenger
//***************

instance Scavenger(Mst_Default_Scavenger)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Scavenger();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};
