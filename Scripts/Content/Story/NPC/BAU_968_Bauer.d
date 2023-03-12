instance BAU_968_Bauer(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BAUER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 13;
	id								= 968;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_Ian, BodyTex_L, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 10); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_968;
};

func void Rtn_Start_968()
{
	TA_Rake_FP(08, 00, 22, 00, "NW_FARM3_FIELD_01");
	TA_Sit_Campfire(22, 00, 08, 00, "NW_FARM3_STABLE_REST_01");
};

func void Rtn_FleeFromPass_968()
{
	TA_Sit_Campfire(08, 00, 22, 00, "NW_BIGMILL_MALAKSVERSTECK_06");
	TA_Sit_Campfire(22, 00, 08, 00, "NW_BIGMILL_MALAKSVERSTECK_06");
};
