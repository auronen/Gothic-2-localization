instance SLD_805_Cord(Npc_Default)
{
	// -------- NPC --------
	name							= "Cord";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 14;
	id								= 805;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Normal_Cord, BodyTex_N, ITAR_SLD_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_NPCIsRanger]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_805;
};

func void Rtn_Start_805()
{
	TA_Practice_Sword(07, 40, 22, 40, "NW_BIGFARM_CORD");
	TA_Sleep(22, 40, 07, 40, "NW_BIGFARM_HOUSE_08");
};

func void Rtn_PreRangerMeeting_805()
{
	TA_RangerMeeting(05, 00, 20, 00, "NW_TAVERNE_04");
	TA_RangerMeeting(20, 00, 05, 00, "NW_TAVERNE_04");
};

func void Rtn_RangerMeeting_805()
{
	TA_RangerMeeting(05, 00, 20, 00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_RangerMeeting(20, 00, 05, 00, "NW_TAVERNE_IN_RANGERMEETING");
};

func void Rtn_Parking_805()
{
	TA_Stand_ArmsCrossed(05, 00, 20, 00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_Stand_ArmsCrossed(20, 00, 05, 00, "NW_TAVERNE_IN_RANGERMEETING");
};
