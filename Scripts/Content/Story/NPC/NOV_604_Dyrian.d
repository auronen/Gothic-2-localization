instance NOV_604_Dyrian(Npc_Default)
{
	// -------- NPC --------
	name							= "Dyrian";
	npctype							= NpcType_Main;
	guild							= GIL_NOV;
	flags							= 0;

	voice							= 13;
	id								= 604;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_P_Tough_Torrez, BodyTex_P, ITAR_NOV_L);
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
	CreateInvItems(self, ItSc_Sleep, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Nov_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_604;
};

func void Rtn_Start_604()
{
	TA_Stand_WP(08, 00, 10, 00, "NW_MONASTERY_GRASS_04");
	TA_Pray_Innos_FP(10, 00, 11, 00, "NW_MONASTERY_CHURCH_03");
	TA_Stand_WP(11, 00, 23, 30, "NW_MONASTERY_GRASS_04");
	TA_Sleep(23, 30, 08, 00, "NW_MONASTERY_NOVICE01_04");
};

func void Rtn_Favour_604()
{
	TA_Rake_FP(08, 00, 23, 30, "NW_MONASTERY_HERB_05");
	TA_Sleep(23, 30, 08, 00, "NW_MONASTERY_NOVICE01_04");
};

func void Rtn_NoFavour_604()
{
	TA_Stand_Drinking(08, 00, 23, 30, "TAVERNE");
	TA_Stand_Drinking(23, 30, 08, 00, "TAVERNE");
};
