instance SLD_821_Soeldner(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_SOELDNER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 6;
	id								= 821;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Gomez, BodyTex_N, ITAR_SLD_M);
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
	EquipItem(self, ItMw_1h_Sld_Sword);
	EquipItem(self, ItRw_Sld_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_821;
};

func void Rtn_Start_821()
{
	TA_Smalltalk(07, 30, 23, 30, "NW_BIGFARM_PATH_04_1");
	TA_Sleep(23, 30, 07, 30, "NW_BIGFARM_HOUSE_08");
};

func void Rtn_RodWeg_821()
{
	TA_Smalltalk(07, 55, 22, 55, "NW_BIGFARM_PATH_02");
	TA_Sleep(22, 55, 07, 55, "NW_BIGFARM_HOUSE_08");
};
