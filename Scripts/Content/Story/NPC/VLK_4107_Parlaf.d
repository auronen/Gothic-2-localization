instance VLK_4107_Parlaf(Npc_Default)
{
	// -------- NPC --------
	name							= "Parlaf";
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_MIL;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 3;
	id								= 4107;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart_Huno, BodyTex_N, ITAR_Mil_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4107;
};

func void Rtn_Start_4107()
{
	TA_Smith_Sharp(08, 00, 20, 00, "OC_SMITH_SHARP");
	TA_Sleep(20, 00, 08, 00, "OC_GUARD_ROOM_01_SLEEP_02");
};

func void Rtn_Tot_4107()
{
	TA_Sleep(08, 00, 20, 00, "TOT");
	TA_Sleep(20, 00, 08, 00, "TOT");
};
