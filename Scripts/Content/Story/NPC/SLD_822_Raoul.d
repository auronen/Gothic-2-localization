instance SLD_822_Raoul(Npc_Default)
{
	// -------- NPC --------
	name							= "Raoul";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 1;
	id								= 822;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_Ian, BodyTex_L, ITAR_SLD_L);
	Mdl_SetModelFatness(self, 1.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_822;
};

func void Rtn_PreStart_822()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_BIGFARM_PATH_01");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_BIGFARM_PATH_01");
};
