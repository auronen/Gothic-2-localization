instance BDT_1085_Addon_Bloodwyn(Npc_Default)
{
	// -------- NPC --------
	name							= "Bloodwyn";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 4; // Stimme Lee
	id								= 1085;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Bloodwyn, BodyTex_N, ITAR_Thorus_Addon);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_StoryBandit]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65);

	// -------- inventory --------
	CreateInvItems(self, ITKE_Addon_Bloodwyn_01, 1);
	CreateInvItems(self, ItMi_Addon_Bloodwyn_Kopf, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1085;
};

func void Rtn_Start_1085()
{
	TA_Stand_WP(08, 00, 16, 00, "BL_RAVEN_09");
	TA_Stand_WP(16, 00, 08, 00, "BL_RAVEN_09");
};

func void Rtn_Mine_1085()
{
	TA_Stand_WP(08, 00, 16, 00, "ADW_MINE_TO_MC_01");
	TA_Stand_WP(16, 00, 08, 00, "ADW_MINE_TO_MC_01");
};

func void Rtn_Gold_1085()
{
	TA_Stand_WP(08, 00, 16, 00, "ADW_MINE_MC_07");
	TA_Stand_WP(16, 00, 08, 00, "ADW_MINE_MC_07");
};
