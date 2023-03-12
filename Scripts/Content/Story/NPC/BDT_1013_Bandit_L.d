instance BDT_1013_Bandit_L(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 1013;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 0);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Homer, BodyTex_N, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 10);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItWr_Poster_MIS, 1);
	// CreateInvItems(self, ItWr_BanditLetter_MIS,1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = RTN_Start_1013;
};

func void RTN_Start_1013()
{
	TA_Stand_ArmsCrossed(00, 00, 12, 00, "NW_XARDAS_STAIRS_01");
	TA_Stand_ArmsCrossed(12, 00, 00, 00, "NW_XARDAS_STAIRS_01");
};

func void RTN_Ambush_1013()
{
	TA_Guide_Player(00, 00, 12, 00, "NW_XARDAS_BANDITS_RIGHT");
	TA_Guide_Player(12, 00, 00, 00, "NW_XARDAS_BANDITS_RIGHT"); // _05
};

func void RTN_AWAY_1013()
{
	TA_Sit_Campfire(00, 00, 12, 00, "NW_XARDAS_GOBBO_02");
	TA_Sit_Campfire(12, 00, 00, 00, "NW_XARDAS_GOBBO_02");
};

func void RTN_AWAY2_1013()
{
	TA_FleeToWP(00, 00, 12, 00, "NW_XARDAS_MONSTER_INSERT_01");
	TA_FleeToWP(12, 00, 00, 00, "NW_XARDAS_MONSTER_INSERT_01");
};
