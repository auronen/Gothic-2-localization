instance VLK_463_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BUERGER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 13;
	id								= 463;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Normal06, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_SWORD);

	// -------- daily routine --------
	daily_routine = Rtn_Start_463;
};

func void Rtn_Start_463()
{
	TA_Smalltalk(08, 00, 23, 00, "NW_CITY_PATH_HABOUR_BACK_ALLEY_02");
	TA_Smalltalk(23, 00, 08, 00, "NW_CITY_PATH_HABOUR_BACK_ALLEY_02");
};
