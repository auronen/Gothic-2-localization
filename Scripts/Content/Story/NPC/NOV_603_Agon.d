instance NOV_603_Agon(Npc_Default)
{
	// -------- NPC --------
	name							= "Agon";
	npctype							= NpcType_Main;
	guild							= GIL_NOV;
	flags							= 0;

	voice							= 7;
	id								= 603;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal01, BodyTex_N, ITAR_NOV_L);
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
	daily_routine = Rtn_Start_603;
};

func void Rtn_Start_603()
{
	TA_Rake_FP(08, 00, 09, 00, "NW_MONASTERY_HERB_05");
	TA_Pray_Innos_FP(09, 00, 10, 00, "NW_MONASTERY_CHURCH_03");
	TA_Rake_FP(10, 00, 22, 10, "NW_MONASTERY_HERB_05");
	TA_Sleep(22, 10, 08, 00, "NW_MONASTERY_NOVICE03_07");
};

func void Rtn_GolemLives_603()
{
	TA_Stand_Guarding(08, 00, 23, 10, "NW_TROLLAREA_PATH_02");
	TA_Stand_Guarding(23, 10, 08, 00, "NW_TROLLAREA_PATH_02");
};

func void Rtn_GolemDead_603()
{
	TA_Stand_Guarding(08, 00, 23, 10, "NW_MAGECAVE_RUNE");
	TA_Stand_Guarding(23, 10, 08, 00, "NW_MAGECAVE_RUNE");
};

// Falls der Spieler Agon nicht umgebracht hat

func void Rtn_StillAlive_603()
{
	TA_Stand_Guarding(08, 00, 23, 10, "TAVERN");
	TA_Stand_Guarding(23, 10, 08, 00, "TAVERN");
};
