instance BAU_963_Malak(Npc_Default)
{
	// -------- NPC --------
	name							= "Malak";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 8;
	id								= 963;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal_Sly, BodyTex_N, ITAR_Bau_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 35); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_963;
};

func void Rtn_Start_963()
{
	TA_Stand_Eating(08, 00, 22, 00, "NW_FARM3_MALAK");
	TA_Stand_Eating(22, 00, 08, 00, "NW_FARM3_MALAK");
};

func void Rtn_FleeFromPass_963()
{
	TA_Stand_Eating(08, 00, 22, 00, "NW_BIGMILL_MALAKSVERSTECK_MALAK");
	TA_Stand_Eating(22, 00, 08, 00, "NW_BIGMILL_MALAKSVERSTECK_MALAK");
};
