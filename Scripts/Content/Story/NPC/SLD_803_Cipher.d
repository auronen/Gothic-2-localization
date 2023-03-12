instance SLD_803_Cipher(Npc_Default)
{
	// -------- NPC --------
	name							= "Cipher";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 7;
	id								= 803;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart10, BodyTex_N, ITAR_SLD_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItRw_Arrow, 50);
	CreateInvItems(self, ItRw_Bow_L_02, 1);
	CreateInvItems(self, ItRw_Sld_Bow, 1);
	CreateInvItems(self, ItMw_2H_OrcAxe_01, 1);
	CreateInvItems(self, ItLsTorch, 8);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_803;
};

func void Rtn_Start_803()
{
	TA_Smalltalk(07, 35, 23, 35, "NW_BIGFARM_PATH_04_1");
	TA_Sleep(23, 35, 07, 35, "NW_BIGFARM_HOUSE_SLD_SLEEP");
};

func void Rtn_Tot_803()
{
	TA_Sleep(08, 00, 23, 00, "TOT");
	TA_Sleep(23, 00, 08, 00, "TOT");
};
