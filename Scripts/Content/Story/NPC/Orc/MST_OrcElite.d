//*****************************
//	Orc Elite prototype
//*****************************

prototype Mst_Default_OrcElite(C_Npc)
{
	// -------- NPC --------
	name							= "Ork Elite";
	guild							= GIL_ORC;
	level							= 45;

	voice							= 18;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 125; // +100 Waffe // MIN 120!
	attribute[ATR_DEXTERITY]		= 225;
	attribute[ATR_HITPOINTS_MAX]	= 450;
	attribute[ATR_HITPOINTS]		= 450;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 160;
	protection[PROT_EDGE]			= 160;
	protection[PROT_POINT]			= 160;
	protection[PROT_FIRE]			= 160;
	protection[PROT_FLY]			= 160;
	protection[PROT_MAGIC]			= 100;

	// -------- hitchance --------
	HitChance[NPC_TALENT_1H]		= 100;
	HitChance[NPC_TALENT_2H]		= 100;
	HitChance[NPC_TALENT_BOW]		= 100;
	HitChance[NPC_TALENT_CROSSBOW]	= 100;

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
	aivar[AIV_MM_REAL_ID]			= ID_ORCELITE;
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

//**************
//	Visuals
//**************

func void B_SetVisuals_OrcElite()
{
	Mdl_SetVisual(self, "Orc.mds");
	//							Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Orc_BodyElite",		DEFAULT,DEFAULT,	"Orc_HeadWarrior",	DEFAULT,	DEFAULT,	-1);
};

//*************************
//	Orc Elite
//*************************
instance OrcElite_Roam(Mst_Default_OrcElite)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_OrcElite();

	// -------- aivars --------
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcSword_02);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//*************************
//	Orc Elite Rest
//*************************
instance OrcElite_Rest(Mst_Default_OrcElite)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_OrcElite();

	// -------- aivars --------
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcSword_02);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//*********************************************************************************************************************************************************************************************************************************
//		Story Orks
//*********************************************************************************************************************************************************************************************************************************
//*************************
//	OrkElite_AntiPaladinOrkOberst (Wenn SC GIL_PAL ist, dann hat er es mit diesen übelriechenden Schergen zu tun!)
//*************************
instance OrkElite_AntiPaladinOrkOberst(Mst_Default_OrcElite)
{
	// -------- NPC --------
	name							= "Orkischer Oberst";

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 140;
	attribute[ATR_DEXTERITY]		= 120;
	attribute[ATR_HITPOINTS_MAX]	= 400;
	attribute[ATR_HITPOINTS]		= 400;

	// -------- visuals --------
	B_SetVisuals_OrcElite();

	// -------- aivars --------
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItRi_OrcEliteRing, 1);
	CreateInvItems(self, ItWr_Map_Orcelite_MIS, 1);
	CreateInvItems(self, ItRu_PalFullHeal, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Schlachtaxt);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//*************************
//	Orc Elite AntiPaladin (Wenn SC GIL_PAL ist, dann hat er es mit diesen übelriechenden Schergen zu tun!)
//*************************
instance OrcElite_AntiPaladin(Mst_Default_OrcElite)
{
	// -------- NPC --------
	name							= NAME_Antipaldin;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_OrcElite();

	// -------- aivars --------
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItRi_OrcEliteRing, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcAxe_04);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//*************************
//	Orc Elite AntiPaladin1 (Wenn SC GIL_PAL ist, dann hat er es mit diesen übelriechenden Schergen zu tun!)
//*************************
instance OrcElite_AntiPaladin1(Mst_Default_OrcElite)
{
	// -------- NPC --------
	name							= NAME_Antipaldin;
	npctype							= NpcType_Main;
	guild							= GIL_ORC;
	flags							= 0;

	voice							= 18;
	id								= 111;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_OrcElite();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItRi_OrcEliteRing, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcAxe_04);

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_DragonRest;
};

//*************************
//	Orc Elite AntiPaladin2
//*************************
instance OrcElite_AntiPaladin2(Mst_Default_OrcElite)
{
	// -------- NPC --------
	name							= NAME_Antipaldin;
	guild							= GIL_ORC;

	id								= 112;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_OrcElite();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItRi_OrcEliteRing, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcAxe_04);

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_DragonRest;
};

//*************************
//	Orc Elite AntiPaladin3
//*************************
instance OrcElite_AntiPaladin3(Mst_Default_OrcElite)
{
	// -------- NPC --------
	name							= NAME_Antipaldin;
	guild							= GIL_ORC;

	id								= 113;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_OrcElite();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItRi_OrcEliteRing, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcAxe_04);

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_DragonRest;
};

//*************************
//	OrkElite_AntiPaladinOrkOberst_DI
//*************************
instance OrkElite_AntiPaladinOrkOberst_DI(Mst_Default_OrcElite)
{
	// -------- NPC --------
	name							= "Orkischer Oberst";

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 150;
	attribute[ATR_DEXTERITY]		= 150;
	attribute[ATR_HITPOINTS_MAX]	= 450;
	attribute[ATR_HITPOINTS]		= 450;

	// -------- visuals --------
	B_SetVisuals_OrcElite();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;
	aivar[AIV_MM_OrcSitStart]		= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItKe_OrkKnastDI_MIS, 1);
	CreateInvItems(self, ItRi_OrcEliteRing, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcAxe_04);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//*************************
//	OrcElite_DIOberst1_Rest
//*************************
instance OrcElite_DIOberst1_Rest(Mst_Default_OrcElite)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_OrcElite();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcAxe_04);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

instance OrcElite_DIOberst2_Rest(Mst_Default_OrcElite)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_OrcElite();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcAxe_04);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

instance OrcElite_DIOberst3_Rest(Mst_Default_OrcElite)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_OrcElite();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcAxe_04);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};
