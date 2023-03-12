instance Mil_330_Miliz(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Miliz;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 7;
	id								= 330;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Mordrag, BodyTex_N, ITAR_MIL_L);
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
	daily_routine = Rtn_Start_330;
};

func void Rtn_Start_330()
{
	TA_Practice_Sword(07, 00, 21, 01, "NW_CITY_HABOUR_KASERN_CENTRE_03");
	TA_Smalltalk(21, 01, 00, 00, "NW_CITY_KASERN_BARRACK02_02");
	TA_Sleep(00, 00, 07, 00, "NW_CITY_BARRACK01_BED_06");
};
