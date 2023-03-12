// #############################################
// ##
// ## Alte Welt
// ##
// ############################################

instance PC_ThiefOW(Npc_Default)
{
	// -------- NPC --------
	name							= "Diego";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= 0; // NPC_FLAG_IMMORTAL;

	voice							= 11;
	id								= 1;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_L_Diego, BodyTex_L, ITAR_DIEGO);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- aivars --------
	aivar[AIV_FollowDist]			= 300;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, itpo_health_03, 10);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_SLD_Sword);
	EquipItem(self, ItRw_Bow_M_03);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1;
};

func void Rtn_Start_1()
{
	TA_Sit_Bench(08, 00, 23, 00, "LOCATION_02_05");
	TA_Sit_Bench(23, 00, 08, 00, "LOCATION_02_05");
};

func void Rtn_Follow_1()
{
	TA_Follow_Player(08, 00, 23, 00, "LOCATION_02_05");
	TA_Follow_Player(23, 00, 08, 00, "LOCATION_02_05");
};

func void Rtn_Tot_1()
{
	TA_Sit_Bench(08, 00, 23, 00, "TOT");
	TA_Sit_Bench(23, 00, 08, 00, "TOT");
};

func void Rtn_Xardas_1()
{
	TA_Stand_Eating(08, 00, 23, 00, "OW_PATH_129");
	TA_Stand_Eating(23, 00, 08, 00, "OW_PATH_129");
};

func void Rtn_Fajeth_1()
{
	TA_Stand_Eating(08, 00, 23, 00, "OW_ORC_LOOKOUT_2_03");
	TA_Stand_Eating(23, 00, 08, 00, "OW_ORC_LOOKOUT_2_03");
};

func void Rtn_Silvestro_1()
{
	TA_Stand_Eating(08, 00, 23, 00, "SPAWN_OW_SCAVENGER_01_DEMONT5");
	TA_Stand_Eating(23, 00, 08, 00, "SPAWN_OW_SCAVENGER_01_DEMONT5");
};

func void Rtn_Grimes_1()
{
	TA_Smoke_Joint(08, 00, 23, 00, "OW_PATH_155");
	TA_Smoke_Joint(23, 00, 08, 00, "OW_PATH_155");
};

func void Rtn_Pass_1()
{
	TA_Sit_Campfire(08, 00, 23, 00, "START");
	TA_Sit_Campfire(23, 00, 08, 00, "START");
};
