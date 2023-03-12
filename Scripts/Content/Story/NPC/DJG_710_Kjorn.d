instance DJG_710_Kjorn(Npc_Default)
{
	// -------- NPC --------
	name							= "Kjorn";
	npctype							= NpcType_Main;
	guild							= GIL_DJG;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 6;
	id								= 710;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Normal02, BodyTex_N, ITAR_DJG_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_710;
};

func void Rtn_PreStart_710()
{
	TA_Smalltalk(08, 00, 23, 00, "OW_PATH_1_5_3A");
	TA_Smalltalk(23, 00, 08, 00, "OW_PATH_1_5_3A");
};

func void Rtn_Start_710()
{
	TA_Sit_Bench(08, 00, 23, 00, "OW_DJG_VORPOSTEN_01");
	TA_Sit_Bench(23, 00, 08, 00, "OW_DJG_VORPOSTEN_01");
};
