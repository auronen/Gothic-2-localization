instance DJG_708_Kurgan(Npc_Default)
{
	// -------- NPC --------
	name							= "Kurgan";
	npctype							= NpcType_Main;
	guild							= GIL_DJG;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 1;
	id								= 708;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_ImportantGrey, BodyTex_N, ITAR_DJG_H);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);
	EquipItem(self, ItRw_Crossbow_M_01);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_708;
};

func void Rtn_PreStart_708()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_PATH_1_5_4");
	TA_Stand_Guarding(23, 00, 08, 00, "OW_PATH_1_5_4");
};

func void Rtn_Start_708()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_MOVEMENT_LURKER_NEARBGOBBO03");
	TA_Stand_Guarding(23, 00, 08, 00, "OW_MOVEMENT_LURKER_NEARBGOBBO03");
};
