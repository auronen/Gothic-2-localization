instance BDT_10024_Addon_Garaz(Npc_Default)
{
	// -------- NPC --------
	name							= "Garaz";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 8;
	id								= 10024;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Normal16, BodyTex_N, ITAR_Bloodwyn_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10024;
};

func void Rtn_Start_10024()
{
	TA_Stand_Guarding(06, 00, 12, 00, "ADW_MINE_TO_MC_04");
	TA_Stand_Guarding(12, 00, 06, 00, "ADW_MINE_TO_MC_04");
};

func void Rtn_Attack_10024()
{
	TA_Guide_Player(06, 00, 12, 00, "ADW_MINE_MC_07");
	TA_Guide_Player(12, 00, 06, 00, "ADW_MINE_MC_07");
};

func void Rtn_Gold_10024()
{
	TA_Stand_Guarding(06, 00, 12, 00, "ADW_MINE_MC_GARAZ");
	TA_Stand_Guarding(12, 00, 06, 00, "ADW_MINE_MC_GARAZ");
};
