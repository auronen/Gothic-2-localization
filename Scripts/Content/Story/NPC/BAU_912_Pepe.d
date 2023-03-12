instance BAU_912_Pepe(Npc_Default)
{
	// -------- NPC --------
	name							= "Pepe";
	npctype							= NpcType_Main;
	guild							= GIL_BAU;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 3;
	id								= 912;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak_Markus_Kark, BodyTex_N, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 10); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_912;
};

func void Rtn_Start_912()
{
	TA_Stand_Eating(08, 00, 22, 00, "NW_BIGFARM_SHEEP2_02"); // Joly: muß hier tag und nacht stehen!!!!!!!!!!!!!
	TA_Stand_Eating(22, 00, 08, 00, "NW_BIGFARM_SHEEP2_02"); // Joly: muß hier tag und nacht stehen!!!!!!!!!!!!!
};
