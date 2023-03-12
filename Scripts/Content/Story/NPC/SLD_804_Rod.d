instance SLD_804_Rod(Npc_Default)
{
	// -------- NPC --------
	name							= "Rod";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 6;
	id								= 804;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_ToughBart01, BodyTex_N, ITAR_SLD_M);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Rod);

	// -------- daily routine --------
	daily_routine = Rtn_Start_804;
};

func void Rtn_Start_804()
{
	TA_Smalltalk(07, 55, 22, 55, "NW_BIGFARM_PATH_02");
	TA_Sleep(22, 55, 07, 55, "NW_BIGFARM_HOUSE_SLD_SLEEP");
};

func void Rtn_Tot_804()
{
	TA_Sleep(08, 00, 23, 00, "TOT");
	TA_Sleep(23, 00, 08, 00, "TOT");
};
