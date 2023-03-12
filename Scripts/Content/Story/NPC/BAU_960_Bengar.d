instance BAU_960_Bengar(Npc_Default)
{
	// -------- NPC --------
	name							= "Bengar";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= NPC_FLAG_IMMORTAL; // NPC_FLAG_IMMORTAL oder 0

	voice							= 10;
	id								= 960;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal_Olli_Kahn, BodyTex_N, ITAR_Bau_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 25); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);
	EquipItem(self, ItRw_Sld_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_960;
};

func void Rtn_Start_960()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_FARM3_BENGAR");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_FARM3_BENGAR");
};

func void Rtn_MilComing_960()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_FARM3_BENGAR");
	TA_Smalltalk(22, 00, 08, 00, "NW_FARM3_BENGAR");
};
