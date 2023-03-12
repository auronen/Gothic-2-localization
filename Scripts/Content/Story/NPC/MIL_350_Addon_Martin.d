instance Mil_350_Addon_Martin(Npc_Default)
{
	// -------- NPC --------
	name							= "Martin";
	npctype							= NpcType_Main;
	guild							= GIL_NONE; // wegen Rangermeeting
	flags							= 0;

	voice							= 7;
	id								= 350;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_P_OldMan_Gravo, BodyTex_P, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_NPCIsRanger]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_350;
};

func void Rtn_PreStart_350()
{
	TA_Study_WP(04, 00, 23, 00, "NW_CITY_PALCAMP_15");
	TA_Study_WP(23, 00, 04, 00, "NW_CITY_PALCAMP_15");
};

func void Rtn_Start_350()
{
	TA_Study_WP(04, 00, 23, 00, "NW_CITY_PALCAMP_15");
	TA_Sit_Chair(23, 00, 04, 00, "NW_CITY_HABOUR_TAVERN01_04");
};

func void Rtn_PreRangerMeeting_350()
{
	TA_RangerMeeting(05, 00, 20, 00, "NW_TAVERNE_07");
	TA_RangerMeeting(20, 00, 05, 00, "NW_TAVERNE_07");
};

func void Rtn_RangerMeeting_350()
{
	TA_RangerMeeting(05, 00, 20, 00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_RangerMeeting(20, 00, 05, 00, "NW_TAVERNE_IN_RANGERMEETING");
};

func void Rtn_Parking_350()
{
	TA_Stand_Guarding(05, 00, 20, 00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_Stand_Guarding(20, 00, 05, 00, "NW_TAVERNE_IN_RANGERMEETING");
};
