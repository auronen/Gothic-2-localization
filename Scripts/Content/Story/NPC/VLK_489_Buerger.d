instance VLK_489_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buerger;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 8;
	id								= 489;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal14, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_489;
};

func void Rtn_Start_489()
{
	TA_Smoke_Joint(11, 20, 19, 15, "NW_CITY_WATCH_FIGHT_02");
	TA_Stand_Drinking(19, 15, 02, 30, "NW_CITY_HABOUR_03");
	TA_Pee(21, 00, 21, 05, "NW_CITY_HABOUR_PUFF_02_01");
	TA_Stand_Drinking(21, 05, 02, 30, "NW_CITY_HABOUR_03");
	TA_Stand_Drinking(02, 30, 05, 20, "NW_CITY_HABOUR_PUFF_IN_07");
	TA_Smoke_Joint(05, 20, 11, 20, "NW_CITY_PATH_HABOUR_01");
};
