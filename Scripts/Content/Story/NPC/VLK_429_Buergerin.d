instance VLK_429_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Buergerin; // Carls Frau
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 429;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe4", FaceBabe_N_VlkBlonde, BodyTex_N, ITAR_VlkBabe_L);
	Mdl_SetModelFatness(self, 0);
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
	daily_routine = Rtn_Start_429;
};

func void Rtn_Start_429()
{
	TA_Smalltalk(05, 05, 12, 05, "NW_CITY_HABOUR_POOR_AREA_PATH_06");
	TA_Stomp_Herb(12, 05, 22, 05, "NW_CITY_HABOUR_POOR_AREA_PATH_08_A");
	TA_Smalltalk(22, 05, 00, 05, "NW_CITY_HABOUR_POOR_AREA_PATH_07");
	TA_Sleep(00, 05, 05, 05, "NW_CITY_HABOUR_HUT_03_BED_01");
};
