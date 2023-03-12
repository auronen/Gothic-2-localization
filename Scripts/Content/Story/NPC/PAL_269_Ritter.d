instance PAL_269_Ritter(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_RITTER;
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_PAL;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 4;
	id								= 269;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Normal_Erpresser, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_269;
};

func void Rtn_Start_269()
{
	TA_Stand_Guarding(08, 00, 21, 00, "OC_EBR_STAND_THRONE_01");
	TA_Stand_Guarding(21, 00, 08, 00, "OC_EBR_FLOOR_02");
};
