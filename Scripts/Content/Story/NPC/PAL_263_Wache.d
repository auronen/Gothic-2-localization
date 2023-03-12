instance PAL_263_Wache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Ritter;
	npctype							= NpcType_Main;
	guild							= GIL_PAL;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 4;
	id								= 263;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Bloodwyn, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_263;
};

func void Rtn_Start_263()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "OC_EBR_GUARDPASSAGE_02");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "OC_EBR_GUARDPASSAGE_02");
};
