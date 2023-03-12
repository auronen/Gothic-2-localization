instance VLK_487_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 487;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe1", FaceBabe_N_Anne, BodyTex_N, ITAR_VlkBabe_L);
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
	daily_routine = Rtn_Start_487;
};

func void Rtn_Start_487()
{
	TA_Stomp_Herb(05, 00, 08, 00, "NW_CITY_PATH_HABOUR_04_STOMPER");
	TA_Smalltalk(08, 00, 12, 00, "NW_CITY_PATH_HABOUR_04_01");
	TA_Cook_Stove(12, 00, 12, 30, "NW_CITY_PATH_HABOUR_04_01");
	TA_Smalltalk(12, 30, 16, 00, "NW_CITY_PATH_HABOUR_04_01");
	TA_Stomp_Herb(16, 00, 19, 30, "NW_CITY_PATH_HABOUR_04_STOMPER");
	TA_Cook_Stove(19, 30, 22, 00, "NW_CITY_HABOUR_HUT_04_IN");
	TA_Sleep(22, 00, 05, 00, "NW_CITY_HABOUR_HUT_04_BED_01");
};
