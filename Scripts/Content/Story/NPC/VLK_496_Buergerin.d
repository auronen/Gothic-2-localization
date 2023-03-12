instance VLK_496_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 496;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe1", FaceBabe_N_OldBrown, BodyTex_N, ITAR_VlkBabe_L);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_496;
};

func void Rtn_Start_496()
{
	TA_Smalltalk(06, 00, 07, 00, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Drinking(07, 00, 08, 00, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Smalltalk(08, 00, 10, 00, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Drinking(10, 00, 11, 00, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Smalltalk(11, 00, 13, 00, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Drinking(13, 00, 14, 00, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Smalltalk(14, 00, 16, 00, "NW_CITY_MERCHANT_PATH_28_D");
	// TA_Stand_Drinking (16,00,18,00,"NW_CITY_MERCHANT_PATH_28_D");

	TA_Cook_Stove(16, 00, 17, 00, "NW_CITY_UPTOWN_HUT_04_COOK");
	TA_Smalltalk(17, 00, 21, 45, "NW_CITY_UPTOWN_PATH_15");
	TA_Cook_Stove(21, 45, 00, 00, "NW_CITY_UPTOWN_HUT_04_COOK");
	TA_Sleep(00, 00, 04, 30, "NW_CITY_LUTERO_BED_WEIB");
	TA_Sweep_FP(04, 30, 06, 00, "NW_CITY_UPTOWN_HUT_04_01");
};
