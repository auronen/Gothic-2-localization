instance PIR_1363_Addon_PIRAT(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_ADDON_PIRAT;
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 7;
	id								= 1363;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Fingers, BodyTex_N, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness(self, 0.9);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_FollowDist]			= 600;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Addon_PIR2hSword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1363;
};

func void Rtn_Start_1363()
{
	TA_Sit_Bench(07, 07, 16, 07, "ADW_PIRATECAMP_BENCH_01");
	TA_Smalltalk(16, 07, 20, 03, "ADW_PIRATECAMP_CENTER");
	TA_Sit_Campfire(20, 03, 22, 07, "WP_PIR_03");
	TA_Stand_Drinking(20, 07, 23, 07, "WP_PIR_03");
	TA_Pee(23, 07, 23, 12, "WP_PIR_03");
	TA_Sit_Campfire(23, 12, 02, 07, "WP_PIR_03");
	TA_Stand_Drinking(02, 07, 03, 07, "WP_PIR_03");
	TA_Sit_Campfire(03, 07, 07, 07, "WP_PIR_03");
};

func void Rtn_Follow_1363()
{
	TA_Follow_Player(05, 00, 20, 00, "ADW_CANYON_TELEPORT_PATH_06");
	TA_Follow_Player(20, 00, 05, 00, "ADW_CANYON_TELEPORT_PATH_06");
};
