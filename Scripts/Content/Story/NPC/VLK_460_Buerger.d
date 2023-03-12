instance VLK_460_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BUERGER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 8;
	id								= 460;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Normal_Olli_Kahn, BodyTex_N, ITAR_Vlk_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

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
	EquipItem(self, ItMw_1h_VLK_DAGGER);

	// -------- daily routine --------
	daily_routine = Rtn_Start_460;
};

func void Rtn_Start_460()
{
	TA_Smalltalk(05, 35, 11, 30, "NW_CITY_HABOUR_05");
	TA_Stand_Drinking(11, 30, 13, 35, "NW_CITY_HABOUR_03");
	TA_Smalltalk(13, 35, 17, 30, "NW_CITY_HABOUR_03");
	TA_Stand_Drinking(17, 30, 23, 30, "NW_CITY_HABOUR_TAVERN01_01");
	TA_Sleep(23, 30, 05, 35, "NW_CITY_HABOUR_POOR_AREA_HUT_01_BED_02");
};
