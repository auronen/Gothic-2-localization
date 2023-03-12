instance VLK_477_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buergerin; // Brahims Frau
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 477;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe1", FaceBabe_N_Anne, BodyTex_N, ITAR_VlkBabe_L);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 35);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_477;
};

func void Rtn_Start_477()
{
	TA_Stand_Eating(05, 05, 11, 55, "NW_CITY_PATH_HABOUR_03");
	TA_Stand_Eating(11, 55, 14, 05, "NW_CITY_WAY_TO_SHIP_01");
	TA_Stand_Eating(14, 05, 15, 55, "NW_CITY_PATH_HABOUR_03");
	TA_Stand_Eating(15, 55, 19, 05, "NW_CITY_WAY_TO_SHIP_01");
	TA_Cook_Stove(19, 05, 21, 05, "NW_CITY_BED_BRAHIM");
	TA_Sleep(21, 05, 05, 05, "NW_CITY_BED_BRAHIM");
};
