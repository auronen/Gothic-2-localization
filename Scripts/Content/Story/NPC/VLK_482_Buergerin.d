instance VLK_482_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 482;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_BabeHair", FaceBabe_N_HairAndCloth, BodyTex_N, ITAR_VlkBabe_L);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 15);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_482;
};

func void Rtn_Start_482()
{
	TA_Smalltalk(12, 00, 16, 00, "NW_CITY_HABOUR_STOMPER_01");
	TA_Stomp_Herb(16, 00, 20, 00, "NW_CITY_HABOUR_STOMPER_01");
	TA_Smalltalk(20, 00, 00, 00, "NW_CITY_HABOUR_SMALLTALK_02");
	TA_Sleep(00, 00, 05, 00, "NW_CITY_HABOUR_HUT_06_BED_01");
};
