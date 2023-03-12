instance VLK_458_Rupert(Npc_Default)
{
	// -------- NPC --------
	name							= "Rupert";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 3;
	id								= 458;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal20, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	CreateInvItems(self, ItFo_Apple, 12);
	CreateInvItems(self, ItFo_Bread, 5);
	CreateInvItems(self, ItFo_Milk, 5);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_458;
};

func void Rtn_Start_458()
{
	TA_Stand_Sweeping(05, 00, 06, 00, "NW_CITY_MAINSTREET_02");
	TA_Stand_WP(06, 00, 09, 30, "NW_CITY_MERCHANT_TRADE_01");
	TA_Stand_Sweeping(09, 30, 10, 00, "NW_CITY_MAINSTREET_02");
	TA_Stand_WP(10, 00, 12, 55, "NW_CITY_MERCHANT_TRADE_01");
	TA_Pee(12, 55, 13, 30, "NW_CITY_MERCHANT_TRADE_03");
	TA_Stand_WP(14, 00, 15, 30, "NW_CITY_MERCHANT_TRADE_01");
	TA_Stand_Sweeping(15, 30, 16, 00, "NW_CITY_MAINSTREET_02");
	TA_Stand_WP(16, 00, 16, 25, "NW_CITY_MERCHANT_TRADE_01");
	TA_Pee(16, 25, 16, 30, "NW_CITY_MERCHANT_TRADE_03");
	TA_Stand_WP(16, 30, 17, 30, "NW_CITY_MERCHANT_TRADE_01");
	TA_Stand_Sweeping(17, 30, 18, 00, "NW_CITY_MAINSTREET_02");
	TA_Stand_WP(18, 00, 20, 00, "NW_CITY_MERCHANT_TRADE_01");
	TA_Sit_Chair(20, 00, 00, 00, "NW_CITY_SHOP02_SIT");
	TA_Sleep(00, 00, 05, 00, "NW_CITY_BED_RUPERT");
};
