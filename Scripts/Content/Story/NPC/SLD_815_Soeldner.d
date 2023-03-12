instance SLD_815_Soeldner(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_SOELDNER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 6;
	id								= 815;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal05, BodyTex_N, ITAR_SLD_L);
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

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Axe);
	EquipItem(self, ItRw_Sld_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_815;
};

func void Rtn_Start_815()
{
	TA_Sit_Campfire(08, 00, 22, 00, "NW_BIGFARM_VORPOSTEN1_01");
	TA_Sit_Campfire(22, 00, 08, 00, "NW_BIGFARM_VORPOSTEN1_01");
};

func void Rtn_BengarsFarm_815()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_FARM3_PATH_02");
	TA_Smalltalk(22, 00, 08, 00, "NW_FARM3_PATH_02");
};
