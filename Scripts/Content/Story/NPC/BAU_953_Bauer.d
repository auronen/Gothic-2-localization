instance BAU_953_Bauer(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BAUER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 7;
	id								= 953;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart04, BodyTex_N, ITAR_Bau_M);
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
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_953;
};

func void Rtn_Start_953()
{
	TA_Pick_FP(08, 05, 12, 05, "NW_FARM1_FIELD_03");
	TA_Pick_FP(12, 05, 15, 05, "NW_FARM1_FIELD_06");
	TA_Pick_FP(15, 05, 18, 05, "NW_FARM1_FIELD_03");
	TA_Pick_FP(18, 05, 22, 05, "NW_FARM1_FIELD_06");
	TA_Sit_Campfire(22, 05, 08, 05, "NW_FARM1_MILL_05");
};

func void Rtn_BugsThere_953()
{
	TA_Sit_Campfire(08, 05, 22, 05, "NW_FARM1_MILL_05");
	TA_Sit_Campfire(22, 05, 08, 05, "NW_FARM1_MILL_05");
};
