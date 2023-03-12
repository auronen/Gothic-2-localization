instance VLK_499_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buerger;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 1;
	id								= 499;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak_BaalNetbek, BodyTex_N, ITAR_Vlk_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_499;
};

func void Rtn_Start_499()
{
	TA_Stand_Eating(06, 00, 08, 00, "NW_CITY_MERCHANT_TRADE_04");
	TA_Stand_Drinking(08, 00, 10, 00, "NW_CITY_UPTOWN_PATH_27");
	TA_Stand_Eating(10, 00, 12, 00, "NW_CITY_MERCHANT_TRADE_04");
	TA_Sit_Bench(12, 00, 14, 00, "NW_CITY_UPTOWN_PATH_03_C");
	TA_Stand_Eating(14, 00, 16, 00, "NW_CITY_MERCHANT_TRADE_04");
	TA_Sit_Bench(16, 00, 18, 00, "NW_CITY_GUARD_01");
	TA_Stand_Eating(18, 00, 19, 55, "NW_CITY_MERCHANT_TRADE_04");
	TA_Sit_Bench(19, 55, 22, 00, "NW_CITY_GUARD_01");

	TA_Sleep(22, 00, 06, 00, "NW_CITY_UPTOWN_HUT_BED_02"); // reich05
};
