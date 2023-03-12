instance VLK_476_Fenia(Npc_Default)
{
	// -------- NPC --------
	name							= "Fenia"; // Halvors Frau
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 476;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe1", FaceBabe_N_GreyCloth, BodyTex_N, ITAR_VlkBabe_L);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 15);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_476;
};

func void Rtn_Start_476()
{
	TA_Stand_Guarding(04, 55, 20, 05, "NW_CITY_PATH_HABOUR_03_01");
	TA_Stomp_Herb(20, 05, 22, 05, "NW_CITY_HABOUR_POOR_AREA_PATH_01");
	TA_Sleep(22, 05, 04, 55, "NW_CITY_BED_HALVOR_WEIB");
};
