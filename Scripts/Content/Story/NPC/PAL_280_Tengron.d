instance PAL_280_Tengron(Npc_Default)
{
	// -------- NPC --------
	name							= "Tengron";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 7;
	id								= 280;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_ToughBald01, BodyTex_L, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 1);
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
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_280;
};

func void Rtn_Start_280()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_NEWMINE_02");
	TA_Stand_Guarding(23, 00, 08, 00, "OW_NEWMINE_02");
};

func void Rtn_RunAfterVirtualRefugee_280()
{
	TA_RunToWP(08, 00, 23, 00, "OW_PATH_06_05");
	TA_RunToWP(23, 00, 08, 00, "OW_PATH_06_05");
};
