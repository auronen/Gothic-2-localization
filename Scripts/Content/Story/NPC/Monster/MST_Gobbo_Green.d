// *********************
// Gobbo_Green prototype
// *********************

prototype Mst_Default_Gobbo_Green(C_NPC)
{
	// -------- NPC --------
	name							= "Goblin";
	guild							= GIL_GOBBO;
	level							= 4;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 20;
	attribute[ATR_HITPOINTS_MAX]	= 20;
	attribute[ATR_HITPOINTS]		= 20;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 20;
	protection[PROT_EDGE]			= 20;
	protection[PROT_POINT]			= 20;
	protection[PROT_FIRE]			= 20;
	protection[PROT_FLY]			= 20;
	protection[PROT_MAGIC]			= 0;

	// -------- damage --------
	// entweder EIN damagetype oder mehrere damage[x], die dann addiert werden und getrennten Rüstungsabzug bekommen
	damageType						= DAM_EDGE;
	//	damage[DAM_INDEX_BLUNT]		= 0;
	//	damage[DAM_INDEX_EDGE]		= 0;
	//	damage[DAM_INDEX_POINT]		= 0;
	//	damage[DAM_INDEX_FIRE]		= 0;
	//	damage[DAM_INDEX_FLY]		= 0;
	//	damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_GOBBO_GREEN;
	aivar[AIV_MM_ThreatenBeforeAttack]= TRUE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_Packhunter]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_GOBBO;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// *****************
// 		Visuals
// *****************

func void B_SetVisuals_Gobbo_Green()
{
	Mdl_SetVisual(self, "Gobbo.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Gob_Body",				0,		DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

// ***********
// Green Gobbo
// ***********

instance Gobbo_Green(Mst_Default_Gobbo_Green)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Gobbo_Green();

	Npc_SetToFightMode(self, ItMw_1h_Bau_Mace); // Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

// *****************
// Young Green Gobbo
// *****************

instance YGobbo_Green(Mst_Default_Gobbo_Green)
{
	// -------- NPC --------
	level							= 3;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 5;
	attribute[ATR_DEXTERITY]		= 5;
	attribute[ATR_HITPOINTS_MAX]	= 20;
	attribute[ATR_HITPOINTS]		= 20;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 0;
	protection[PROT_EDGE]			= 0;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 0;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 0;

	// -------- visuals --------
	B_SetVisuals_Gobbo_Green();

	// -------- fight tactic --------
	fight_tactic = FAI_MONSTER_COWARD;
	Npc_SetToFightMode(self, ItMw_1h_Bau_Mace); // Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
