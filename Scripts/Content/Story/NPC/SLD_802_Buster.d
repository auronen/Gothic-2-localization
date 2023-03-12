instance SLD_802_Buster(Npc_Default)
{
	// -------- NPC --------
	name							= "Buster";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 13;
	id								= 802;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Drax, BodyTex_N, ITAR_SLD_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL; // MASTER / STRONG / NORMAL / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItRw_Arrow, 10);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Axe);
	EquipItem(self, ItRw_Sld_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_802;
};

func void Rtn_Start_802()
{
	TA_Smalltalk(07, 00, 21, 00, "NW_BIGFARM_HUT_01");
	TA_Sit_Bench(21, 00, 07, 00, "NW_BIGFARM_HUT_BENCH_02");
};
