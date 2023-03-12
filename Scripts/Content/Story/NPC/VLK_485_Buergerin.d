instance VLK_485_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 485;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_BabeHair", FaceBabe_N_HairAndCloth, BodyTex_N, ITAR_VlkBabe_L);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 15);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_485;
};

func void Rtn_Start_485()
{
	TA_Sit_Bench(05, 10, 10, 10, "NW_CITY_HABOUR_BENCH_02");
	TA_Stand_Sweeping(10, 10, 12, 10, "NW_CITY_HABOUR_POOR_AREA_HUT_05_IN");
	TA_Stomp_Herb(12, 10, 16, 05, "NW_CITY_HABOUR_POOR_AREA_PATH_06_B");
	TA_Smalltalk(16, 05, 19, 05, "NW_CITY_HABOUR_POOR_AREA_PATH_06");
	TA_Sit_Bench(19, 05, 22, 55, "NW_CITY_HABOUR_BENCH_02");
	TA_Sleep(22, 55, 05, 10, "NW_CITY_HABOUR_POOR_AREA_HUT_05_BED_01");
};
