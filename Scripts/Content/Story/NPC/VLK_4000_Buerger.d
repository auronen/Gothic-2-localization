instance VLK_4000_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buerger;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 6;
	id								= 4000;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart21, BodyTex_N, ITAR_Vlk_H);
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
	daily_routine = Rtn_Start_4000;
};

func void Rtn_Start_4000()
{
	TA_Sleep(22, 00, 08, 00, "NW_CITY_UPTOWN_HUT_05_BED_01");
	TA_Smalltalk(08, 00, 12, 00, "NW_CITY_UPTOWN_HUT_04_ENTRY");
	TA_Sit_Bench(12, 00, 15, 00, "NW_CITY_GUARD_01");
	TA_Smalltalk(15, 00, 18, 00, "NW_CITY_UPTOWN_HUT_04_ENTRY");
	TA_Sit_Bench(18, 00, 20, 00, "NW_CITY_GUARD_01");
	TA_Sit_Bench(20, 00, 22, 00, "NW_CITY_UPTOWN_PATH_27");
};
