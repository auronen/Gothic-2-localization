instance Mil_307_Tuerwache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Miliz;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 6;
	id								= 307;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Horatio, BodyTex_N, ITAR_MIL_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_307;
};

func void Rtn_Start_307()
{
	TA_Stand_Guarding(12, 00, 14, 00, "NW_CITY_UPTOWN_PATH_13");
	TA_Stand_ArmsCrossed(14, 00, 16, 00, "NW_CITY_UPTOWN_PATH_05");
	TA_Stand_Guarding(16, 00, 18, 00, "NW_CITY_UPTOWN_PATH_09");
	TA_Stand_Guarding(18, 00, 20, 00, "NW_CITY_UPTOWN_PATH_13");
	TA_Stand_ArmsCrossed(20, 00, 22, 00, "NW_CITY_UPTOWN_PATH_05");

	TA_Stand_Guarding(22, 00, 23, 30, "NW_CITY_UPTOWN_PATH_09");
	TA_Stand_Guarding(23, 30, 01, 00, "NW_CITY_UPTOWN_PATH_14");
	TA_Stand_ArmsCrossed(01, 00, 02, 30, "NW_CITY_UPTOWN_PATH_09");
	TA_Stand_Guarding(02, 30, 04, 00, "NW_CITY_UPTOWN_PATH_13");
	TA_Stand_Guarding(04, 00, 05, 30, "NW_CITY_UPTOWN_PATH_14");

	TA_Stand_Guarding(05, 30, 08, 00, "NW_CITY_UPTOWN_PATH_13");
	TA_Stand_ArmsCrossed(08, 00, 10, 00, "NW_CITY_UPTOWN_PATH_05");
	TA_Stand_Guarding(10, 00, 12, 00, "NW_CITY_UPTOWN_PATH_09");
};
