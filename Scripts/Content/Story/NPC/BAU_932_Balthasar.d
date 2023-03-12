instance BAU_932_Balthasar(Npc_Default)
{
	// -------- NPC --------
	name							= "Balthasar";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 5;
	id								= 932;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_P_NormalBart01, BodyTex_P, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

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
	daily_routine = Rtn_Start_932;
};

func void Rtn_Start_932()
{
	TA_Stand_Eating(08, 00, 22, 00, "NW_FARM4_BALTHASAR");
	TA_Stand_Eating(22, 00, 08, 00, "NW_FARM4_BALTHASAR");
};

func void Rtn_FleeDMT_932()
{
	TA_Stand_Eating(08, 00, 22, 00, "NW_FLEEDMT_KAP3");
	TA_Stand_Eating(22, 00, 08, 00, "NW_FLEEDMT_KAP3");
};

func void Rtn_BengarsWeide_932()
{
	TA_Stand_Eating(08, 00, 22, 00, "NW_BIGMILL_FARM3_BALTHASAR");
	TA_Stand_Eating(22, 00, 08, 00, "NW_BIGMILL_FARM3_BALTHASAR");
};

func void Rtn_Test_932()
{
	TA_Stand_Eating(08, 00, 22, 00, "FARM3");
	TA_Stand_Eating(22, 00, 08, 00, "FARM3");
};
