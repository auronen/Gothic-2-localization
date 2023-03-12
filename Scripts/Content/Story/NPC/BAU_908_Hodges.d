instance BAU_908_Hodges(Npc_Default)
{
	// -------- NPC --------
	name							= "Hodges";
	npctype							= NpcType_Main;
	guild							= GIL_BAU;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 3;
	id								= 908;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_L_NormalBart01, BodyTex_L, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItMw_1h_Bau_Axe, 1);
	CreateInvItems(self, ItMw_1h_Vlk_Axe, 1);
	CreateInvItems(self, ItMw_1H_Mace_L_04, 1);
	CreateInvItems(self, ItMw_1h_Sld_Axe, 1);
	CreateInvItems(self, ItMw_1h_Sld_Sword, 1);
	CreateInvItems(self, ItMw_Schwert, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_908;
};

func void Rtn_Start_908()
{
	TA_Smith_Sharp(07, 00, 19, 00, "NW_BIGFARM_SMITH_SHARP");
	TA_Sleep(19, 00, 07, 00, "NW_BIGFARM_STABLE_SLEEP_02");
};

func void Rtn_BennetWeg_908()
{
	TA_Stand_Drinking(07, 00, 19, 00, "NW_BIGFARM_PATH_HODGES");
	TA_Stand_Drinking(19, 00, 07, 00, "NW_BIGFARM_PATH_HODGES");
};
