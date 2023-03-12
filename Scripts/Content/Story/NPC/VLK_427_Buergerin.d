instance VLK_427_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 427;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_BabeHair", FaceBabe_N_HairAndCloth, BodyTex_N, ITAR_BauBabe_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_427;
};

func void Rtn_Start_427()
{
	TA_Cook_Stove(04, 30, 12, 00, "NW_CITY_MERCHANT_SHOP01_IN_03_B");
	TA_Stand_Sweeping(12, 00, 13, 02, "NW_CITY_MERCHANT_SHOP01_FRONT_02_B");
	TA_Smalltalk(13, 02, 14, 05, "NW_CITY_MERCHANT_SHOP01_FRONT_03_E");
	TA_Cook_Stove(14, 05, 16, 00, "NW_CITY_MERCHANT_SHOP01_IN_03_B");
	TA_Stand_Sweeping(16, 00, 17, 02, "NW_CITY_MERCHANT_SHOP01_FRONT_02_B");
	TA_Smalltalk(17, 02, 18, 05, "NW_CITY_MERCHANT_SHOP01_FRONT_03_E");
	TA_Cook_Stove(18, 05, 20, 00, "NW_CITY_MERCHANT_SHOP01_IN_03_B");
	TA_Sit_Chair(20, 00, 23, 30, "NW_CITY_MERCHANT_SHOP01_IN_01");
	TA_Sleep(23, 30, 04, 30, "NW_CITY_MERCHANT_SHOP01_IN_01");
};
