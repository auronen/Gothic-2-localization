// #############################################
// ##
// ## Neue Welt
// ##
// ############################################
instance VLK_449_Lares(Npc_Default)
{
	// -------- NPC --------
	name							= "Lares";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 9; // Joly: hat zu viel mit Diego zu tun, als dass man ihm Diegos Stimme gibt.
	id								= 449;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Lares, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_NPCIsRanger]			= TRUE;
	aivar[AIV_IgnoresFakeGuild]		= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 35);

	// -------- inventory --------
	CreateInvItems(self, ItMw_Schwert3, 1); // zur Sicherheit - bei Waffenverlust hat er 'ne neue M.F.
	CreateInvItems(self, ItMi_Gold, 100);
	CreateInvItems(self, ItMi_OldCoin, 1); // Joly: damit er gefunden wird, wenn er im Kampf stirbt
	CreateInvItems(self, ItPo_Health_02, 5); // Mattes: damit er frisch bei Taverne ankommt.

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Schwert3);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_449;
};

func void Rtn_PreStart_449()
{
	TA_Stand_Guarding(08, 00, 20, 00, "NW_CITY_HABOUR_02_B");
	TA_Stand_Guarding(20, 00, 08, 00, "NW_CITY_HABOUR_02_B");
};

func void Rtn_Start_449()
{
	TA_Stand_Guarding(04, 35, 20, 05, "NW_CITY_HABOUR_02_B");
	TA_Sit_Chair(20, 05, 04, 35, "NW_CITY_HABOUR_TAVERN01_08");
};

func void Rtn_Guide_449()
{
	TA_Guide_Player(08, 00, 20, 00, "NW_TAVERNE_BIGFARM_05");
	TA_Guide_Player(20, 00, 08, 00, "NW_TAVERNE_BIGFARM_05");
};

func void Rtn_GUIDEPORTALTEMPEL1_449()
{
	TA_Guide_Player(08, 00, 20, 00, "NW_CITY_TO_FOREST_11");
	TA_Guide_Player(20, 00, 08, 00, "NW_CITY_TO_FOREST_11");
};

func void Rtn_GUIDEPORTALTEMPEL2_449()
{
	TA_Guide_Player(08, 00, 20, 00, "NW_TAVERN_TO_FOREST_02");
	TA_Guide_Player(20, 00, 08, 00, "NW_TAVERN_TO_FOREST_02");
};

func void Rtn_GUIDEPORTALTEMPEL3_449()
{
	TA_Guide_Player(08, 00, 20, 00, "NW_TAVERNE_TROLLAREA_14");
	TA_Guide_Player(20, 00, 08, 00, "NW_TAVERNE_TROLLAREA_14");
};

func void Rtn_GUIDEPORTALTEMPEL4_449()
{
	TA_Guide_Player(08, 00, 20, 00, "NW_TROLLAREA_PATH_58");
	TA_Guide_Player(20, 00, 08, 00, "NW_TROLLAREA_PATH_58");
};

func void Rtn_GUIDEPORTALTEMPEL5_449()
{
	TA_Guide_Player(08, 00, 20, 00, "NW_TROLLAREA_PATH_47");
	TA_Guide_Player(20, 00, 08, 00, "NW_TROLLAREA_PATH_47");
};

func void Rtn_GUIDEPORTALTEMPEL6_449()
{
	TA_Guide_Player(08, 00, 20, 00, "NW_TROLLAREA_RUINS_02");
	TA_Guide_Player(20, 00, 08, 00, "NW_TROLLAREA_RUINS_02");
};

func void Rtn_GUIDEPORTALTEMPELEND_449()
{
	TA_Guide_Player(08, 00, 20, 00, "NW_TROLLAREA_RUINS_41");
	TA_Guide_Player(20, 00, 08, 00, "NW_TROLLAREA_RUINS_41");
};

func void Rtn_GUIDEMEDIUMWALD1_449()
{
	TA_Guide_Player(08, 00, 20, 00, "NW_CITY_TO_FARM2_04");
	TA_Guide_Player(20, 00, 08, 00, "NW_CITY_TO_FARM2_04");
};

func void Rtn_GUIDEMEDIUMWALD2_449()
{
	TA_Guide_Player(08, 00, 20, 00, "NW_FOREST_PATH_62");
	TA_Guide_Player(20, 00, 08, 00, "NW_FOREST_PATH_62");
};

func void Rtn_PreRangerMeeting_449()
{
	TA_RangerMeeting(05, 00, 20, 00, "NW_TAVERNE_03");
	TA_RangerMeeting(20, 00, 05, 00, "NW_TAVERNE_03");
};

func void Rtn_RangerMeeting_449()
{
	TA_RangerMeeting(05, 00, 20, 00, "NW_TAVERNE_IN_RANGERMEETING_LARES");
	TA_RangerMeeting(20, 00, 05, 00, "NW_TAVERNE_IN_RANGERMEETING_LARES");
};

func void Rtn_Parking_449()
{
	TA_Stand_WP(05, 00, 20, 00, "NW_TAVERNE_IN_RANGERMEETING_LARES");
	TA_Stand_WP(20, 00, 05, 00, "NW_TAVERNE_IN_RANGERMEETING_LARES");
};

func void Rtn_WaitForShip_449()
{
	TA_Smalltalk(08, 00, 20, 00, "NW_WAITFOR_SHIP_05");
	TA_Smalltalk(20, 00, 08, 00, "NW_WAITFOR_SHIP_05");
};

func void Rtn_ShipOff_449()
{
	TA_Stand_Guarding(04, 35, 20, 05, "NW_CITY_HABOUR_02_B");
	TA_Sit_Chair(20, 05, 04, 35, "NW_CITY_HABOUR_TAVERN01_08");
};

func void Rtn_Ship_449()
{
	TA_Smalltalk(08, 00, 23, 00, "SHIP_CREW_05");
	TA_Smalltalk(23, 00, 08, 00, "SHIP_CREW_05");
};
