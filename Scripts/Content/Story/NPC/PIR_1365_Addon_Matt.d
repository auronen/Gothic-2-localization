instance PIR_1365_Addon_Matt(Npc_Default)
{
	// -------- NPC --------
	name							= "Matt";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 10;
	id								= 1365;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Normal14, BodyTex_N, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_FollowDist]			= 500;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Addon_PIR2hAxe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1365;
};

func void Rtn_Start_1365()
{
	TA_Smalltalk(07, 05, 16, 05, "ADW_PIRATECAMP_BEACH_11");
	TA_Stand_Drinking(16, 05, 20, 05, "ADW_PIRATECAMP_BEACH_11");
	TA_Smalltalk(20, 05, 21, 05, "ADW_PIRATECAMP_BEACH_11");
	TA_Stand_Drinking(21, 05, 07, 05, "ADW_PIRATECAMP_BEACH_11");
};

func void Rtn_Follow_1365()
{
	TA_Follow_Player(08, 00, 20, 00, "ADW_CANYON_TELEPORT_PATH_06");
	TA_Follow_Player(20, 00, 08, 00, "ADW_CANYON_TELEPORT_PATH_06");
};
