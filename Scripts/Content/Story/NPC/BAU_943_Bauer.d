instance BAU_943_Bauer(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BAUER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 7;
	id								= 943;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_B_Normal_Orik, BodyTex_B, ITAR_Bau_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 15); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_943;
};

func void Rtn_Start_943()
{
	TA_Rake_FP(05, 00, 12, 00, "NW_FARM2_FIELD_05");
	TA_Sit_Campfire(12, 00, 14, 00, "NW_FARM2_FIELD_04_C"); // Pause
	TA_Rake_FP(14, 00, 20, 52, "NW_FARM2_FIELD_05");
	TA_Sit_Campfire(20, 52, 05, 00, "NW_FARM2_OUT_09");
};
