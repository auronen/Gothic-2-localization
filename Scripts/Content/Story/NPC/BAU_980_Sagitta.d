instance BAU_980_Sagitta(Npc_Default)
{
	// -------- NPC --------
	name							= "Sagitta";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 17;
	id								= 980;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_PinkHair, BodyTexBabe_N, ITAR_BauBabe_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_980;
};

func void Rtn_Start_980()
{
	TA_Sit_Throne(08, 00, 23, 00, "NW_SAGITTA_CAVE_IN_02");
	TA_Potion_Alchemy(23, 00, 08, 00, "NW_SAGITTA_CAVE_IN_03");
};
