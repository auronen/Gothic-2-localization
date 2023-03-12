instance VLK_483_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 483;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe4", FaceBabe_N_VlkBlonde, BodyTex_N, ITAR_VlkBabe_M);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

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
	daily_routine = Rtn_Start_483;
};

func void Rtn_Start_483()
{
	TA_Smalltalk(08, 00, 18, 00, "NW_CITY_HABOUR_09");
	TA_Sleep(18, 00, 08, 00, "NW_CITY_HABOUR_HUT_06_BED_01");
};
