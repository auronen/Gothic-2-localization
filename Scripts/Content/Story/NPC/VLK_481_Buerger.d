instance VLK_481_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buerger;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 8;
	id								= 474;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal20, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

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
	daily_routine = Rtn_Start_481;
};

func void Rtn_Start_481()
{
	TA_Cook_Cauldron(05, 05, 12, 05, "NW_CITY_PATH_HABOUR_13_C");
	TA_Smalltalk(12, 05, 15, 55, "NW_CITY_HABOUR_SMALLTALK_02");
	TA_Cook_Cauldron(15, 55, 20, 05, "NW_CITY_PATH_HABOUR_13_C");
	TA_Smalltalk(20, 05, 23, 55, "NW_CITY_HABOUR_SMALLTALK_02");
	TA_Sleep(23, 55, 05, 05, "NW_CITY_HABOUR_HUT_06_BED_02");
};
