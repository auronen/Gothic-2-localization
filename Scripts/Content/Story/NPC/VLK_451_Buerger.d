instance VLK_451_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BUERGER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 8;
	id								= 451;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Lefty, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_451;
};

func void Rtn_Start_451()
{
	TA_Smalltalk(06, 10, 13, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_03");
	TA_Smalltalk(13, 00, 14, 02, "NW_CITY_MAINSTREET_05");
	TA_Smalltalk(14, 02, 17, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_03");
	TA_Smalltalk(17, 00, 18, 02, "NW_CITY_MAINSTREET_05");
	TA_Smalltalk(18, 02, 20, 10, "NW_CITY_MERCHANT_SHOP01_FRONT_03");
	TA_Sit_Chair(20, 10, 06, 10, "NW_CITY_TAVERN_IN_05");
};
