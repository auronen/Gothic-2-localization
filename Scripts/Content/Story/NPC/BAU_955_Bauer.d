instance BAU_955_Bauer(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BAUER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 1;
	id								= 955;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal06, BodyTex_N, ITAR_Bau_M);
	Mdl_SetModelFatness(self, 0);
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
	daily_routine = Rtn_Start_955;
};

func void Rtn_Start_955()
{
	TA_Pick_FP(08, 10, 12, 10, "NW_FARM1_FIELD_07");
	TA_Pick_FP(12, 10, 15, 10, "NW_FARM1_FIELD_02");
	TA_Pick_FP(15, 10, 18, 10, "NW_FARM1_FIELD_07");
	TA_Pick_FP(18, 10, 22, 10, "NW_FARM1_FIELD_02");
	TA_Sit_Campfire(22, 10, 08, 10, "NW_FARM1_MILL_05");
};

func void Rtn_BugsThere_955()
{
	TA_Sit_Campfire(08, 10, 22, 10, "NW_FARM1_MILL_05");
	TA_Sit_Campfire(22, 10, 08, 10, "NW_FARM1_MILL_05");
};
