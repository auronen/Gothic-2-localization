instance NOV_607_Novize(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Novize;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_NOV;
	flags							= 0;

	voice							= 08;
	id								= 607;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_NormalBart_Dexter, BodyTex_N, ITAR_NOV_L);
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
	daily_routine = Rtn_Start_607;
};

func void Rtn_Start_607()
{
	TA_Stomp_Herb(08, 00, 12, 00, "NW_MONASTERY_WINEMAKER_05");
	TA_Pray_Innos_FP(12, 00, 13, 00, "NW_MONASTERY_CHURCH_03");
	TA_Stomp_Herb(13, 00, 22, 15, "NW_MONASTERY_WINEMAKER_05");
	TA_Sleep(22, 15, 08, 00, "NW_MONASTERY_NOVICE03_05");
};

func void Rtn_Exchange_607()
{
	TA_Smalltalk(09, 00, 22, 04, "NW_MONASTERY_GRASS_01");
	TA_Sleep(22, 04, 09, 00, "NW_MONASTERY_NOVICE03_05");
};
