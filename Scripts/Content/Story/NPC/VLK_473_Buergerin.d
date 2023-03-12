instance VLK_473_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 473;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_Lilo, BodyTex_N, ITAR_VlkBabe_L);
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
	daily_routine = Rtn_Start_473;
};

func void Rtn_Start_473()
{
	TA_Smalltalk(05, 05, 12, 30, "NW_CITY_HABOUR_PUFF_02");
	TA_Smalltalk(12, 30, 18, 05, "NW_CITY_WAY_TO_SHIP_01");
	TA_Stand_Sweeping(18, 05, 22, 05, "NW_CITY_HABOUR_POOR_AREA_HUT_01_IN");
	TA_Sleep(22, 05, 05, 05, "NW_CITY_HABOUR_POOR_AREA_HUT_01_BED_01");
};
