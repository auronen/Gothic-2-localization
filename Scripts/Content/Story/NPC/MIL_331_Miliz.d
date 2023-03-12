instance Mil_331_Miliz(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Miliz;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 6;
	id								= 331;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal04, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_331;
};

func void Rtn_Start_331()
{
	TA_Practice_Sword(07, 02, 21, 02, "NW_CITY_HABOUR_KASERN_CENTRE_04");
	TA_Read_Bookstand(21, 02, 00, 02, "NW_CITY_KASERN_BARRACK02_04");
	TA_Sleep(00, 02, 07, 02, "NW_CITY_BARRACK01_BED_01");
};
