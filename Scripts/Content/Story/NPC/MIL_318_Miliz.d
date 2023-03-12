instance Mil_318_Miliz(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Miliz;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 6;
	id								= 318;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart16, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_318;
};

func void Rtn_Start_318()
{
	TA_Stand_Guarding(06, 45, 21, 05, "NW_CITY_HABOUR_KASERN_OFFICE");
	TA_Smalltalk(21, 05, 23, 59, "NW_CITY_HABOUR_KASERN_BARRACK02_IN");
	TA_Sleep(23, 59, 06, 45, "NW_CITY_BARRACK02_BED_WULFGAR");
};
