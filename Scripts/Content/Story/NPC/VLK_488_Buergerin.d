instance VLK_488_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 488;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_BabeHair", FaceBabe_N_HairAndCloth, BodyTex_N, ITAR_BauBabe_L);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

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
	daily_routine = Rtn_Start_488;
};

func void Rtn_Start_488()
{
	TA_Cook_Stove(05, 00, 08, 00, "NW_CITY_HABOUR_HUT_08_IN_B");
	TA_Smalltalk(08, 00, 12, 00, "NW_CITY_PATH_HABOUR_04");
	TA_Stand_Eating(12, 00, 14, 00, "NW_CITY_PATH_HABOUR_03");
	TA_Sweep_FP(14, 00, 16, 00, "NW_CITY_HABOUR_HUT_08_IN_B");
	TA_Stand_Eating(16, 00, 18, 00, "NW_CITY_PATH_HABOUR_03");
	TA_Cook_Stove(18, 00, 20, 00, "NW_CITY_HABOUR_HUT_08_IN_B");
	TA_Sweep_FP(20, 00, 00, 00, "NW_CITY_HABOUR_HUT_08_IN_B");
	TA_Sleep(00, 00, 05, 00, "NW_CITY_HABOUR_HUT_08_BED_01");
};
