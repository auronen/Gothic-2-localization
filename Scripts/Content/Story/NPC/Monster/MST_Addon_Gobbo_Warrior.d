//*************************
//	BlackGobbo prototype
//*************************

prototype Mst_Default_Gobbo_Warrior(C_NPC)
{
	// -------- NPC --------
	name							= "Goblin - Krieger";
	guild							= GIL_GOBBO;
	level							= 15;

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
	protection[PROT_POINT]			= 75;
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
	aivar[AIV_MM_REAL_ID]			= ID_GOBBO_BLACK;
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

//***************
//	Visuals
//***************

func void B_SetVisuals_Gobbo_Warrior()
{
	Mdl_SetVisual(self, "Gobbo.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Gob_Body",				2,		DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//***************
//	Visuals
//***************

func void B_SetVisuals_Gobbo_Warrior_Visir()
{
	Mdl_SetVisual(self, "Gobbo.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Gob_Body",				3,		DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

// ***********
// Black Gobbo
// ***********

instance Gobbo_Warrior(Mst_Default_Gobbo_Warrior)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Gobbo_Warrior();
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);

	Npc_SetToFightMode(self, ItMw_1h_Misc_Sword); // Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

// ***********
// Black Gobbo
// ***********

instance Gobbo_Warrior_Visir(Mst_Default_Gobbo_Warrior)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Gobbo_Warrior_Visir();
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);

	Npc_SetToFightMode(self, ItMw_1h_Misc_Axe); // Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
