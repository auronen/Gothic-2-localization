instance Mil_319_Pablo(Npc_Default)
{
	// -------- NPC --------
	name							= "Pablo";
	npctype							= NpcType_Main;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 12;
	id								= 319;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart_Dusty, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItKe_City_Tower_01, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_319;
};

func void Rtn_Start_319()
{
	TA_Stand_Guarding(01, 00, 03, 00, "NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding(03, 00, 05, 00, "NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding(05, 00, 07, 00, "NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding(07, 00, 09, 00, "NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding(09, 00, 11, 00, "NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding(11, 00, 13, 00, "NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding(13, 00, 15, 00, "NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding(15, 00, 17, 00, "NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding(17, 00, 19, 00, "NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding(19, 00, 21, 00, "NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding(21, 00, 23, 00, "NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding(23, 00, 01, 00, "NW_CITY_MERCHANT_PATH_22");
};
