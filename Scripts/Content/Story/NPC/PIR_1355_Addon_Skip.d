instance PIR_1355_Addon_Skip(Npc_Default)
{
	// -------- NPC --------
	name							= "Skip";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 8;
	id								= 1355;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Pirat01, BodyTex_N, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_FollowDist]			= 300;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	CreateInvItems(self, itpo_Health_03, 2);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_ShortSword2);
	EquipItem(self, ItRw_sld_bow);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1355;
};

func void Rtn_PreStart_1355()
{
	TA_Stand_WP(08, 00, 21, 00, "ADW_PIRATECAMP_HUT3_01");
	TA_Stand_WP(21, 00, 08, 00, "ADW_PIRATECAMP_HUT3_01");
};

func void Rtn_Start_1355()
{
	TA_Stand_WP(07, 30, 11, 30, "ADW_PIRATECAMP_HUT3_01");
	TA_Sit_Bench(11, 30, 20, 30, "ADW_PIRATECAMP_HUT3_BENCH");
	TA_Sit_Campfire(20, 30, 01, 30, "ADW_PIRATECAMP_BEACH_17");
	TA_Stand_Drinking(01, 30, 02, 30, "ADW_PIRATECAMP_BEACH_17");
	TA_Sleep(02, 30, 07, 30, "ADW_PIRATECAMP_HUT3_02");
};

func void Rtn_Follow_1355()
{
	TA_Follow_Player(08, 00, 20, 00, "ADW_CANYON_TELEPORT_PATH_06");
	TA_Follow_Player(20, 00, 08, 00, "ADW_CANYON_TELEPORT_PATH_06");
};
