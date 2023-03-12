instance BAU_930_Sekob(Npc_Default)
{
	// -------- NPC --------
	name							= "Sekob";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= NPC_FLAG_IMMORTAL; // NPC_FLAG_IMMORTAL oder 0

	voice							= 1;
	id								= 930;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fatbald", Face_P_OldMan_Gravo, BodyTex_P, ITAR_Vlk_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 20); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_930;
};

func void Rtn_Start_930()
{
	TA_Sit_Throne(08, 00, 22, 00, "NW_FARM4_SEKOB");
	TA_Sleep(22, 00, 08, 00, "NW_FARM4_IN_BED");
};

func void Rtn_FleeDMT_930()
{
	TA_Stand_WP(08, 00, 22, 00, "NW_BIGFARM_FARM4_PATH_01");
	TA_Stand_WP(22, 00, 08, 00, "NW_BIGFARM_FARM4_PATH_01");
};

func void Rtn_Obsessed_930()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_FARM4_02");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_FARM4_02");
};
