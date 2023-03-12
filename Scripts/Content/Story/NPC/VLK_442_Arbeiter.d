instance VLK_442_Arbeiter(Npc_Default)
{
	// -------- NPC --------
	name							= "Arbeiter";
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 6;
	id								= 442;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart_Senyan, BodyTex_N, ITAR_Bau_L);
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
	EquipItem(self, ItMw_1h_VLK_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_442;
};

func void Rtn_Start_442()
{
	TA_Repair_Hut(05, 00, 19, 00, "NW_CITY_HABOUR_WERFT_ENTRY");
	TA_Smalltalk(19, 00, 05, 00, "NW_CITY_PATH_HABOUR_01");
};
