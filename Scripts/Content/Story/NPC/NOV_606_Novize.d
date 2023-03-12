instance NOV_606_Novize(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Novize;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_NOV;
	flags							= 0;

	voice							= 03;
	id								= 606;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal08, BodyTex_N, ITAR_NOV_L);
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
	daily_routine = Rtn_Start_606;
};

func void Rtn_Start_606()
{
	TA_Stomp_Herb(08, 00, 11, 00, "NW_MONASTERY_WINEMAKER_04");
	TA_Pray_Innos_FP(11, 00, 12, 00, "NW_MONASTERY_CHURCH_03");
	TA_Stomp_Herb(12, 00, 22, 30, "NW_MONASTERY_WINEMAKER_04");
	TA_Sleep(22, 30, 08, 00, "NW_MONASTERY_NOVICE03_04");
};
