instance NOV_610_Novize(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Novize;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_NOV;
	flags							= 0;

	voice							= 8;
	id								= 610;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal04, BodyTex_N, ITAR_NOV_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Nov_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_610;
};

func void Rtn_Start_610()
{
	TA_Pick_FP(08, 00, 13, 00, "NW_MONASTERY_HERB_03");
	TA_Pray_Innos_FP(13, 00, 14, 00, "NW_MONASTERY_CHURCH_03");
	TA_Pick_FP(14, 00, 22, 50, "NW_MONASTERY_HERB_03");
	TA_Sleep(22, 50, 08, 00, "NW_MONASTERY_NOVICE04_06");
};
