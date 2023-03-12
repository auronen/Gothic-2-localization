instance BAU_902_Gunnar(Npc_Default)
{
	// -------- NPC --------
	name							= "Gunnar";
	npctype							= NpcType_Main;
	guild							= GIL_BAU;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 10;
	id								= 902;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart03, BodyTex_N, ITAR_Bau_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 25); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_902;
};

func void Rtn_Start_902()
{
	TA_Smalltalk(08, 00, 19, 59, "NW_BIGFARM_STABLE_OUT_01");
	TA_Sit_Chair(19, 59, 08, 00, "NW_BIGFARM_STABLE_06");
};
