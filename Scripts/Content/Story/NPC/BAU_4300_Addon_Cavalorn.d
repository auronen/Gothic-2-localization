instance Bau_4300_Addon_Cavalorn(Npc_Default)
{
	// -------- NPC --------
	name							= "Cavalorn";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 8;
	id								= 4300;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_B_Cavalorn, BodyTex_B, ITAR_RANGER_ADDON);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_NPCIsRanger]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------
	CreateInvItems(self, ITAR_BAU_L, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_ShortSword2);
	EquipItem(self, ItRw_sld_bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4300;
};

func void Rtn_Start_4300()
{
	TA_Stand_Eating(05, 00, 20, 00, "NW_XARDAS_GOBBO_01");
	TA_Stand_Eating(20, 00, 05, 00, "NW_XARDAS_GOBBO_01");
};

func void Rtn_KillBandits_4300()
{
	TA_RunToWP(05, 00, 20, 00, "NW_XARDAS_BANDITS_LEFT");
	TA_RunToWP(20, 00, 05, 00, "NW_XARDAS_BANDITS_LEFT");
};

func void Rtn_OrnamentSteinring_4300()
{
	TA_Stand_WP(05, 00, 20, 00, "NW_LITTLESTONEHENDGE");
	TA_Stand_WP(20, 00, 05, 00, "NW_LITTLESTONEHENDGE");
};

func void Rtn_PreRangerMeeting_4300()
{
	TA_RangerMeeting(05, 00, 20, 00, "NW_TAVERNE_06");
	TA_RangerMeeting(20, 00, 05, 00, "NW_TAVERNE_06");
};

func void Rtn_RangerMeeting_4300()
{
	TA_RangerMeeting(05, 00, 20, 00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_RangerMeeting(20, 00, 05, 00, "NW_TAVERNE_IN_RANGERMEETING");
};

func void Rtn_Parking_4300()
{
	TA_Stand_ArmsCrossed(05, 00, 20, 00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_Stand_ArmsCrossed(20, 00, 05, 00, "NW_TAVERNE_IN_RANGERMEETING");
};

func void Rtn_Stadt_4300()
{
	TA_Sit_Bench(05, 00, 20, 00, "NW_CITY_MERCHANT_PATH_15");
	TA_Sit_Bench(20, 00, 05, 00, "NW_CITY_MERCHANT_PATH_15");
};
