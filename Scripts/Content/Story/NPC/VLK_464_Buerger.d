instance VLK_464_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BUERGER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 1;
	id								= 464;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart_Huno, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	// EquipItem(self, ItMw_1h_VLK_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_464;
};

func void Rtn_Start_464()
{
	TA_Smalltalk(08, 00, 23, 00, "NW_CITY_PATH_HABOUR_BACK_ALLEY_02");
	TA_Smalltalk(23, 00, 08, 00, "NW_CITY_PATH_HABOUR_BACK_ALLEY_02");
};
