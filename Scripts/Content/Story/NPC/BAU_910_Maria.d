instance BAU_910_Maria(Npc_Default)
{
	// -------- NPC --------
	name							= "Maria";
	npctype							= NpcType_Main;
	guild							= GIL_BAU;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 17;
	id								= 910;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_MidBauBlonde, BodyTexBabe_N, ITAR_BauBabe_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

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
	daily_routine = Rtn_Start_910;
};

func void Rtn_Start_910()
{
	TA_Sit_Throne(08, 00, 22, 00, "NW_BIGFARM_HOUSE_UP1_SESSEL");
	TA_Sleep(22, 00, 08, 00, "NW_BIGFARM_HOUSE_UP1_04");
};
