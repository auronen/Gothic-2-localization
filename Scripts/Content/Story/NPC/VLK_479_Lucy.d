instance VLK_479_Lucy(Npc_Default)
{
	// -------- NPC --------
	name							= "Lucy"; // Alwins Frau
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 479;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe1", FaceBabe_N_Anne, BodyTex_N, ITAR_BauBabe_L);
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
	daily_routine = Rtn_Start_479;
};

func void Rtn_Start_479()
{
	TA_Rake_FP(05, 00, 19, 00, "NW_CITY_PICK_02");
	TA_Cook_Stove(19, 00, 22, 00, "NW_CITY_HABOUR_HUT_07_IN");
	TA_Sleep(22, 00, 05, 00, "NW_CITY_HABOUR_HUT_07_BED_01");
};
