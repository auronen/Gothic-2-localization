instance BAU_961_Gaan(Npc_Default)
{
	// -------- NPC --------
	name							= "Gaan";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 3;
	id								= 961;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal02, BodyTex_N, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_NPCIsRanger]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 25); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);
	EquipItem(self, ItRw_Sld_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_961;
};

func void Rtn_PreStart_961()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_FARM3_PATH_LEVELCHANGE_02");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_FARM3_PATH_LEVELCHANGE_02");
};

func void Rtn_Start_961()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_FARM3_GAAN");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_FARM3_STABLE_REST_01");
};

func void Rtn_PreRangerMeeting_961()
{
	TA_RangerMeeting(05, 00, 20, 00, "NW_TAVERNE_03");
	TA_RangerMeeting(20, 00, 05, 00, "NW_TAVERNE_03");
};

func void Rtn_RangerMeeting_961()
{
	TA_RangerMeeting(05, 00, 20, 00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_RangerMeeting(20, 00, 05, 00, "NW_TAVERNE_IN_RANGERMEETING");
};

func void Rtn_Parking_961()
{
	TA_Stand_ArmsCrossed(05, 00, 20, 00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_Stand_ArmsCrossed(20, 00, 05, 00, "NW_TAVERNE_IN_RANGERMEETING");
};
