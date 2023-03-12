instance BDT_1067_Bandit_L(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 10;
	id								= 1067;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Normal20, BodyTex_N, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1067;
};

// ------ TA ------
func void RTn_Start_1067()
{
	TA_Sleep(00, 00, 12, 00, "NW_CASTLEMINE_TOWER_08");
	TA_Sleep(12, 00, 00, 00, "NW_CASTLEMINE_TOWER_08");
};
