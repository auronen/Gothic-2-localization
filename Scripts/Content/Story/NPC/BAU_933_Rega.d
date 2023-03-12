instance BAU_933_Rega(Npc_Default)
{
	// -------- NPC --------
	name							= "Rega";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 17;
	id								= 933;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe1", FaceBabe_N_OldBlonde, BodyTexBabe_N, ITAR_BauBabe_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 15); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_933;
};

func void Rtn_Start_933()
{
	TA_Pick_FP(08, 00, 22, 00, "NW_FARM4_FIELD_02");
	TA_Sit_Campfire(22, 00, 08, 00, "NW_FARM4_REST_02");
};

func void Rtn_FleeDMT_933()
{
	TA_Pick_FP(08, 00, 22, 00, "NW_FARM4_FIELD_02");
	TA_Pick_FP(22, 00, 08, 00, "NW_FARM4_FIELD_02");
};
