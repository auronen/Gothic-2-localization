instance Mil_320_Miliz(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Miliz;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 6;
	id								= 320;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Drax, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, -1);
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
	daily_routine = Rtn_Start_320;
};

func void Rtn_Start_320()
{
	TA_Stand_Guarding(05, 00, 20, 15, "NW_CITY_MERCHANT_PATH_27");
	TA_Stand_Guarding(20, 15, 22, 15, "NW_CITY_MERCHANT_PATH_36");
	TA_Stand_Guarding(22, 15, 00, 15, "NW_CITY_MERCHANT_PATH_27");
	TA_Stand_Guarding(00, 15, 02, 15, "NW_CITY_MERCHANT_PATH_36");
	TA_Stand_Guarding(02, 15, 04, 15, "NW_CITY_MERCHANT_PATH_27");
	TA_Stand_Guarding(04, 15, 05, 00, "NW_CITY_MERCHANT_PATH_36");
};
