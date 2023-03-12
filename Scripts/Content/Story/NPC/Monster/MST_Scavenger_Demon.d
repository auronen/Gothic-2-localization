//****************************
//	Scavenger-Demon prototype
//****************************

prototype Mst_Default_Scavenger_Demon(C_Npc)
{
	// -------- NPC --------
	name							= NAME_ADDON_SCAVENGERGL;
	guild							= GIL_SCAVENGER;
	level							= 12;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 60;
	attribute[ATR_DEXTERITY]		= 60;
	attribute[ATR_HITPOINTS_MAX]	= 120;
	attribute[ATR_HITPOINTS]		= 120;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 60;
	protection[PROT_EDGE]			= 60;
	protection[PROT_POINT]			= 10;
	protection[PROT_FIRE]			= 60;
	protection[PROT_FLY]			= 60;
	protection[PROT_MAGIC]			= 0;

	// -------- damage --------
	damageType						= DAM_EDGE;
	// damage[DAM_INDEX_BLUNT]		= 0;
	// damage[DAM_INDEX_EDGE]		= 30; // STR wird genommen, wenn Summe aller dam = 0
	// damage[DAM_INDEX_POINT]		= 0;
	// damage[DAM_INDEX_FIRE]		= 0;
	// damage[DAM_INDEX_FLY]		= 0;
	// damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_SCAVENGER_DEMON;
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

//************
//	Visuals
//************

func void B_SetVisuals_Scavenger_Demon()
{
	Mdl_SetVisual(self, "ScavengerGL.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Scavenger_Demon_Body",	DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//***************
//	Scavenger
//***************

instance Scavenger_Demon(Mst_Default_Scavenger_Demon)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Scavenger_Demon();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};
