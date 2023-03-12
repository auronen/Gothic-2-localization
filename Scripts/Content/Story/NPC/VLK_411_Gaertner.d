instance VLK_411_Gaertner(Npc_Default)
{
	// -------- NPC --------
	name							= "Gärtner";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 9;
	id								= 411;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_N_NormalBart_Graham, BodyTex_N, ITAR_BAU_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_411;
};

func void Rtn_Start_411()
{
	TA_Rake_FP(06, 30, 08, 30, "NW_CITY_CITYHALL_04");
	TA_Rake_FP(08, 30, 10, 30, "NW_CITY_CITYHALL_10");
	TA_Rake_FP(10, 30, 12, 30, "NW_CITY_CITYHALL_12");
	TA_Rake_FP(12, 30, 14, 30, "NW_CITY_CITYHALL_07");
	TA_Rake_FP(14, 30, 16, 30, "NW_CITY_CITYHALL_10");
	TA_Rake_FP(16, 30, 18, 30, "NW_CITY_CITYHALL_12");
	TA_Rake_FP(18, 30, 20, 30, "NW_CITY_CITYHALL_07");
	TA_Rake_FP(20, 30, 22, 00, "NW_CITY_CITYHALL_04");

	TA_Sit_Campfire(22, 00, 06, 30, "NW_CITY_CITYHALL_04_B");
};
