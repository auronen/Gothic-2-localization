instance VLK_4303_Addon_Erol(Npc_Default)
{
	// -------- NPC --------
	name							= "Erol";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 10;
	id								= 4303;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Corristo, BodyTex_N, ITAR_VLK_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	CreateInvItems(self, ItPo_Health_01, 3);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_VLK_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_4303;
};

func void Rtn_PreStart_4303()
{
	TA_Sit_Bench(08, 00, 22, 00, "NW_TAVERN_TO_FOREST_03");
	TA_Sit_Bench(22, 00, 08, 00, "NW_TAVERN_TO_FOREST_03");
};

func void Rtn_Start_4303()
{
	TA_RangerMeeting(08, 00, 22, 00, "NW_BIGFARM_HUT_02");
	TA_RangerMeeting(22, 00, 08, 00, "NW_BIGFARM_HUT_02");
};

func void Rtn_Home_4303()
{
	TA_Sit_Chair(08, 00, 22, 00, "NW_BIGFARM_HUT_IN_01");
	TA_Sleep(22, 00, 08, 00, "NW_BIGFARM_HUTINSIDE_BED");
};
