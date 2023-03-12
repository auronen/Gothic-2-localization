instance BAU_913_Thekla(Npc_Default)
{
	// -------- NPC --------
	name							= "Thekla";
	npctype							= NpcType_Main;
	guild							= GIL_BAU;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 17;
	id								= 913;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_Brown, BodyTexBabe_N, ITAR_BauBabe_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 10); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_913;
};

func void Rtn_Start_913()
{
	TA_Stand_Guarding(08, 00, 08, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(08, 30, 09, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(09, 00, 09, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(09, 30, 10, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(10, 00, 10, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(10, 30, 11, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(11, 00, 11, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(11, 30, 12, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(12, 00, 12, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(12, 30, 13, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(13, 00, 13, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(13, 30, 14, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(14, 00, 14, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(14, 30, 15, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(15, 00, 15, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(15, 30, 16, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(16, 00, 16, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(16, 30, 17, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(17, 00, 17, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(17, 30, 18, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(18, 00, 18, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(18, 30, 19, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(19, 00, 19, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(19, 30, 20, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(20, 00, 20, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(20, 30, 21, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(21, 00, 21, 30, "NW_BIGFARM_KITCHEN_BARKEEPER");
	TA_Cook_Stove(21, 30, 22, 00, "NW_BIGFARM_KITCHEN_COOK");

	TA_Stand_Guarding(22, 00, 08, 00, "NW_BIGFARM_KITCHEN_BARKEEPER");
};
