instance BAU_952_Vino(Npc_Default)
{
	// -------- NPC --------
	name							= "Vino";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 5;
	id								= 952;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fatbald", Face_N_Weak_Herek, BodyTex_N, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

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
	daily_routine = Rtn_Start_952;
};

// Joly: NIE AUF EINE BANK ODER THRON SETZEN

func void Rtn_Start_952()
{
	TA_Rake_FP(08, 00, 12, 00, "NW_FARM1_FIELD_04");
	TA_Rake_FP(12, 00, 15, 00, "NW_FARM1_FIELD_05");
	TA_Rake_FP(15, 00, 18, 00, "NW_FARM1_FIELD_04");
	TA_Rake_FP(18, 00, 22, 00, "NW_FARM1_FIELD_05");
	TA_Sleep(22, 00, 08, 00, "NW_FARM1_INSTABLE_BED");
};

// Joly: NIE AUF EINE BANK ODER THRON SETZEN

func void Rtn_BugsThere_952()
{
	TA_Stand_Drinking(08, 00, 22, 00, "NW_FARM1_ENTRANCE_03");
	TA_Sleep(22, 00, 08, 00, "NW_FARM1_INSTABLE_BED");
};

// Joly: NIE AUF EINE BANK ODER THRON SETZEN

func void Rtn_ObesessionRitual_952()
{
	TA_Smoke_Joint(07, 30, 23, 00, "NW_LITTLESTONEHENDGE_01");
	TA_Smoke_Joint(23, 00, 07, 30, "NW_LITTLESTONEHENDGE_01");
};

// Joly: NIE AUF EINE BANK ODER THRON SETZEN

func void Rtn_Kloster_952()
{
	TA_Stand_Drinking(08, 00, 22, 00, "NW_MONASTERY_PLACE_07");
	TA_Sleep(22, 00, 08, 00, "NW_MONASTERY_NOVICE04_07");
};

// Joly: NIE AUF EINE BANK ODER THRON SETZEN

func void Rtn_Flee_952()
{
	TA_Stand_Drinking(08, 00, 22, 00, "NW_TAVERNE_CROSS");
	TA_Sleep(22, 00, 08, 00, "NW_TAVERNE_CROSS");
};
