//***************************
//	Swampgolem prototype
//***************************

prototype Mst_Default_Addon_SwampGolem(C_Npc)
{
	// -------- NPC --------
	name							= "Sumpfgolem";
	guild							= GIL_SWAMPGOLEM;
	level							= 25;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 125;
	attribute[ATR_DEXTERITY]		= 125;
	attribute[ATR_HITPOINTS_MAX]	= 250;
	attribute[ATR_HITPOINTS]		= 250;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 125;
	protection[PROT_EDGE]			= 125;
	protection[PROT_POINT]			= 250;
	protection[PROT_FIRE]			= 125;
	protection[PROT_FLY]			= 125;
	protection[PROT_MAGIC]			= 125;

	// -------- damage --------
	damageType						= DAM_FLY;
	//	damage[DAM_INDEX_BLUNT]		= 0;
	//	damage[DAM_INDEX_EDGE]		= 0;
	//	damage[DAM_INDEX_POINT]		= 0;
	//	damage[DAM_INDEX_FIRE]		= 0;
	//	damage[DAM_INDEX_FLY]		= 0;
	//	damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_SWAMPGOLEM;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_STONEGOLEM;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------
func void B_SetVisuals_Swampgolem()
{
	Mdl_SetVisual(self, "SwampGolem.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Gol_Sumpf_Body",		DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//******************
//	Swampgolem
//******************

instance SwampGolem(Mst_Default_Addon_SwampGolem)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Swampgolem();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//******************
//	SwampGolem_Valley
//******************

instance SwampGolem_Valley(Mst_Default_Addon_SwampGolem)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Swampgolem();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 1500;
	aivar[AIV_OriginalFightTactic]	= FAI_STONEGOLEM;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
