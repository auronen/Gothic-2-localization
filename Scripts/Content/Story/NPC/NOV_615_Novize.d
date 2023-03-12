instance NOV_615_Novize(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Novize;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_NOV;
	flags							= 0;

	voice							= 3;
	id								= 615;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_NormalBart_Riordian, BodyTex_P, ITAR_NOV_L);
	Mdl_SetModelFatness(self, 1);
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
	daily_routine = Rtn_Start_615;
};

func void Rtn_Start_615()
{
	TA_Stand_Sweeping(08, 00, 15, 00, "NW_MONASTERY_CELLAR_08");
	TA_Pray_Innos_FP(15, 00, 16, 00, "NW_MONASTERY_CHURCH_03");
	TA_Stand_Sweeping(16, 00, 22, 00, "NW_MONASTERY_CELLAR_08");
	TA_Sleep(22, 00, 08, 00, "NW_MONASTERY_NOVICE04_04");
};

func void Rtn_Fegen_615()
{
	TA_Stand_Sweeping(08, 00, 22, 00, "NW_MONASTERY_NOVICE03_02");
	TA_Stand_Sweeping(22, 00, 08, 00, "NW_MONASTERY_NOVICE03_02");
};
