instance PAL_270_Ritter(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_RITTER;
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_PAL;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 6;
	id								= 270;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_L_ToughBart_Quentin, BodyTex_L, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_270;
};

func void Rtn_Start_270()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OC_EBR_STAND_THRONE_02");
	TA_Stand_Guarding(23, 00, 08, 00, "OC_EBR_BASE_TO_FLOOR");
};
