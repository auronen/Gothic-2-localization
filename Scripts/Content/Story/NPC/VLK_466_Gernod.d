instance VLK_466_Gernod(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BUERGER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 1;
	id								= 466;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak_Ulbert, BodyTex_N, ITAR_Vlk_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_466;
};

func void Rtn_Start_466()
{
	TA_Sit_Bench(06, 05, 15, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_03_B");
	TA_Stand_Drinking(15, 00, 18, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_03_B");
	TA_Sit_Bench(18, 00, 21, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_03_B");
	TA_Stand_Drinking(21, 00, 01, 10, "NW_CITY_HABOUR_POOR_AREA_HUT_03_B");
	TA_Sleep(01, 10, 06, 05, "NW_CITY_HABOUR_POOR_AREA_HUT_05_BED_01");
};
