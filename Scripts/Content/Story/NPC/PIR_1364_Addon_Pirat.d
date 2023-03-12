instance PIR_1364_Addon_PIRAT(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Addon_PIRAT;
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 6;
	id								= 1364;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart_Dusty, BodyTex_N, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_FollowDist]			= 700;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Addon_PIR1hSword);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1364;
};

func void Rtn_PreStart_1364()
{
	TA_Roast_Scavenger(08, 00, 20, 00, "ADW_PIRATECAMP_SCAVENGER");
	TA_Roast_Scavenger(20, 00, 08, 00, "ADW_PIRATECAMP_SCAVENGER");
};

func void Rtn_Start_1364()
{
	TA_Roast_Scavenger(07, 35, 16, 35, "ADW_PIRATECAMP_SCAVENGER");
	TA_Stand_Drinking(16, 35, 17, 35, "ADW_PIRATECAMP_BEACH_07");
	TA_Roast_Scavenger(17, 35, 20, 35, "ADW_PIRATECAMP_SCAVENGER");
	TA_Stand_Drinking(20, 35, 07, 35, "ADW_PIRATECAMP_BEACH_07");
};

func void Rtn_Follow_1364()
{
	TA_Follow_Player(08, 00, 20, 00, "ADW_CANYON_TELEPORT_PATH_06");
	TA_Follow_Player(20, 00, 08, 00, "ADW_CANYON_TELEPORT_PATH_06");
};
