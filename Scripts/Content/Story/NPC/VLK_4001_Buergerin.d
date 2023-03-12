instance VLK_4001_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 4001;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_BabeHair", FaceBabe_N_HairAndCloth, BodyTex_N, ITAR_VlkBabe_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4001;
};

func void Rtn_Start_4001()
{
	TA_Sleep(21, 45, 06, 30, "NW_CITY_REICH03_BED_02");

	TA_Stand_Sweeping(06, 30, 08, 00, "NW_CITY_UPTOWN_HUT_02_ENTRY");
	TA_Cook_Stove(08, 00, 10, 00, "NW_CITY_REICH03_COOK");
	TA_Smalltalk(10, 00, 14, 00, "NW_CITY_UPTOWN_PATH_15_B");
	TA_Sweep_FP(14, 00, 15, 30, "NW_CITY_UPTOWN_HUT_02_IN");
	TA_Cook_Stove(15, 30, 17, 00, "NW_CITY_REICH03_COOK");
	TA_Smalltalk(17, 00, 21, 45, "NW_CITY_UPTOWN_PATH_15_B");
};
