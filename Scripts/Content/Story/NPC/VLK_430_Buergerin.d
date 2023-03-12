instance VLK_430_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Buergerin; // Frau vom 'Säger' 453
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 430;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_Lilo, BodyTex_N, ITAR_VlkBabe_L);
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

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_430;
};

func void Rtn_Start_430()
{
	TA_Smalltalk(05, 07, 12, 07, "NW_CITY_HABOUR_POOR_AREA_PATH_07");
	TA_Cook_Stove(12, 07, 16, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_04_BED_01");
	TA_Smalltalk(16, 07, 19, 07, "NW_CITY_HABOUR_POOR_AREA_PATH_07");
	TA_Sweep_FP(19, 07, 22, 07, "NW_CITY_HABOUR_POOR_AREA_HUT_04_IN_B");
	TA_Smalltalk(22, 07, 00, 07, "NW_CITY_HABOUR_POOR_AREA_PATH_07");
	TA_Sleep(00, 07, 05, 07, "NW_CITY_HABOUR_POOR_AREA_HUT_04_BED_01");
};
