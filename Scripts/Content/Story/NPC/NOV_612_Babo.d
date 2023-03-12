instance NOV_612_Babo(Npc_Default)
{
	// -------- NPC --------
	name							= "Babo";
	npctype							= NpcType_Main;
	guild							= GIL_NOV;
	flags							= 0;

	voice							= 3;
	id								= 612;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Normal07, BodyTex_N, ITAR_NOV_L);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItMw_1h_Nov_Mace, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Nov_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_612;
};

func void Rtn_Start_612()
{
	TA_Stand_Sweeping(08, 00, 14, 00, "NW_MONASTERY_CORRIDOR_10");
	TA_Pray_Innos_FP(14, 00, 15, 00, "NW_MONASTERY_CHURCH_03");
	TA_Stand_Sweeping(15, 00, 23, 30, "NW_MONASTERY_CORRIDOR_10");
	TA_Sleep(23, 30, 08, 00, "NW_MONASTERY_NOVICE04_05");
};

func void Rtn_Train_612()
{
	TA_Sleep(23, 30, 05, 00, "NW_MONASTERY_NOVICE04_05");
	TA_Practice_Sword(05, 00, 07, 00, "NW_MONASTERY_TRAIN_02");
	TA_Stand_Sweeping(07, 00, 14, 00, "NW_MONASTERY_CORRIDOR_10");
	TA_Pray_Innos_FP(14, 00, 15, 00, "NW_MONASTERY_CHURCH_03");
	TA_Stand_Sweeping(15, 00, 23, 30, "NW_MONASTERY_CORRIDOR_10");
};

func void Rtn_Fegen_612()
{
	TA_Stand_Sweeping(08, 00, 23, 30, "NW_MONASTERY_NOVICE04_02");
	TA_Stand_Sweeping(23, 30, 08, 00, "NW_MONASTERY_NOVICE04_02");
};

func void Rtn_Favour_612()
{
	TA_Rake_FP(08, 00, 23, 30, "NW_MONASTERY_HERB_05");
	TA_Sleep(23, 30, 08, 00, "NW_MONASTERY_NOVICE04_05");
};
