instance VLK_419_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buerger;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 1;
	id								= 419;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald.", Face_N_NormalBart_Graham, BodyTex_N, ITAR_VLK_H);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 35);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_419;
};

func void Rtn_Start_419()
{
	TA_Sit_Bench(07, 00, 11, 00, "NW_CITY_UPTOWN_PATH_23");
	TA_Stand_Drinking(11, 00, 12, 30, "NW_CITY_UPTOWN_HUT_02_ENTRY");
	TA_Stand_Eating(12, 30, 15, 00, "NW_CITY_UPTOWN_PATH_17");
	TA_Sit_Bench(15, 00, 18, 00, "NW_CITY_UPTOWN_PATH_23");
	TA_Stand_Drinking(18, 00, 20, 00, "NW_CITY_UPTOWN_PATH_17");
	TA_Sit_Chair(20, 00, 23, 00, "NW_CITY_UPTOWN_HUT_03_IN");
	TA_Sleep(23, 00, 07, 00, "NW_CITY_UPTOWN_HUT_03_BED");
};
