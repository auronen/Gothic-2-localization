instance VLK_4005_Arbeiter(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Arbeiter;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 6;
	id								= 4005;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal_Olli_Kahn, BodyTex_N, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4005;
};

func void Rtn_Start_4005()
{
	TA_Stand_Sweeping(06, 33, 08, 00, "NW_CITY_UPTOWN_PATH_07");
	TA_Stand_Sweeping(08, 00, 10, 00, "NW_CITY_UPTOWN_PATH_18");
	TA_Stand_Sweeping(10, 00, 12, 00, "NW_CITY_UPTOWN_PATH_03_B");

	TA_Sit_Bench(12, 00, 15, 00, "NW_CITY_UPTOWN_PATH_24_B");

	TA_Stand_Sweeping(15, 00, 17, 00, "NW_CITY_UPTOWN_PATH_07");
	TA_Stand_Sweeping(17, 00, 19, 00, "NW_CITY_UPTOWN_PATH_18");
	TA_Stand_Sweeping(19, 00, 21, 00, "NW_CITY_UPTOWN_PATH_03_B");

	TA_Sit_Bench(21, 00, 00, 04, "NW_CITY_UPTOWN_PATH_24_B");
	TA_Sit_Campfire(00, 04, 06, 33, "NW_CITY_SMALLTALK_05");
};
