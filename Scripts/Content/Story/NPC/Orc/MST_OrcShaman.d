//****************************
//	Orc SHAMAN prototype
//****************************

prototype Mst_Default_OrcShaman(C_Npc)
{
	// -------- NPC --------
	name							= "Ork Schamane";
	guild							= GIL_ORC;
	level							= 35;

	voice							= 18;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 100; // MIN 100! + ca. 70 Waffe
	attribute[ATR_DEXTERITY]		= 170;
	attribute[ATR_HITPOINTS_MAX]	= 350;
	attribute[ATR_HITPOINTS]		= 350;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;

	// -------- protection --------
	protection[PROT_BLUNT]			= 130;
	protection[PROT_EDGE]			= 130;
	protection[PROT_POINT]			= 130;
	protection[PROT_FIRE]			= 130;
	protection[PROT_FLY]			= 130;
	protection[PROT_MAGIC]			= 65;

	// -------- hitchance --------
	HitChance[NPC_TALENT_1H]		= 60;
	HitChance[NPC_TALENT_2H]		= 60;
	HitChance[NPC_TALENT_BOW]		= 60;
	HitChance[NPC_TALENT_CROSSBOW]	= 60;

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
	aivar[AIV_MM_REAL_ID]			= ID_ORCSHAMAN;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= FALSE;

	// -------- fight tactic --------
	fight_tactic = FAI_ORC;
	senses = SENSE_HEAR | SENSE_SEE;
	senses_range = PERC_DIST_ORC_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//****************
//	Visuals
//****************

func void B_SetVisuals_OrcShaman()
{
	Mdl_SetVisual(self, "Orc.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Orc_BodyShaman",		DEFAULT,DEFAULT,	"Orc_HeadShaman",	DEFAULT,	DEFAULT,	-1);
};

//****************
//	Orc Shaman
//****************

instance OrcShaman_Sit(Mst_Default_OrcShaman)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_OrcShaman();

	// -------- aivars --------
	aivar[AIV_MM_OrcSitStart]		= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcAxe_01);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//*********************
//	Hosh-Pak
//*********************

instance OrcShaman_Hosh_Pak(Mst_Default_OrcShaman)
{
	// -------- NPC --------
	name							= "Hosh-Pak";

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_OrcShaman();

	// -------- aivars --------
	aivar[AIV_MM_OrcSitStart]		= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcAxe_01);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//****************
//	Orc Shaman
//****************

instance OrcShaman_Sit_CanyonLibraryKey(Mst_Default_OrcShaman)
{
	// -------- NPC --------
	name							= "Anführer der Horde";

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_OrcShaman();

	// -------- aivars --------
	aivar[AIV_MM_OrcSitStart]		= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ITKE_CANYONLIBRARY_HIERARCHY_BOOKS_ADDON, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcAxe_01);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};
