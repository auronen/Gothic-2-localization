instance BAU_950_Lobart(Npc_Default)
{
	// -------- NPC --------
	name							= "Lobart";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 5;
	id								= 950;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart_Senyan, BodyTex_N, ITAR_Bau_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 20); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_950;
};

func void Rtn_Start_950()
{
	TA_Stand_Guarding(07, 30, 23, 00, "NW_FARM1_LOBART");
	TA_Sleep(23, 00, 07, 30, "NW_FARM1_INHOUSE_BED_01");
};

func void Rtn_ObesessionRitual_950()
{
	TA_Stand_Guarding(07, 30, 23, 00, "NW_FARM1_OUT_05");
	TA_Stand_Guarding(23, 00, 07, 30, "NW_FARM1_OUT_05");
};
