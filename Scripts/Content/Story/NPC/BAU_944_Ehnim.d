instance BAU_944_Ehnim(Npc_Default)
{
	// -------- NPC --------
	name							= "Ehnim";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 12;
	id								= 944;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_P_Normal03, BodyTex_P, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItPo_Health_02, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_944;
};

func void Rtn_Start_944()
{
	TA_Rake_FP(05, 00, 12, 00, "NW_FARM2_FIELD_03");
	TA_Sit_Campfire(12, 00, 14, 00, "NW_FARM2_FIELD_03_B");
	TA_Rake_FP(14, 00, 21, 00, "NW_FARM2_FIELD_03");
	TA_Sit_Campfire(21, 00, 05, 00, "NW_FARM2_OUT_03");
};
