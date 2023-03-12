instance VLK_495_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Magd; // Coragons Frau / Magd / Bedienung
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 495;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_BabeHair", FaceBabe_N_HairAndCloth, BodyTex_N, ITAR_BauBabe_L);
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
	daily_routine = Rtn_Start_495;
};

func void Rtn_Start_495()
{
	TA_Smalltalk(06, 00, 08, 00, "NW_CITY_MERCHANT_PATH_28_B");
	TA_Stand_Eating(08, 00, 09, 00, "NW_CITY_MERCHANT_PATH_30");
	TA_Smalltalk(09, 00, 11, 00, "NW_CITY_MERCHANT_PATH_28_B");
	TA_Stand_Eating(11, 00, 12, 00, "NW_CITY_MERCHANT_PATH_30");
	TA_Smalltalk(12, 00, 14, 00, "NW_CITY_MERCHANT_PATH_28_B");
	TA_Stand_Eating(14, 00, 15, 00, "NW_CITY_MERCHANT_PATH_30");
	TA_Smalltalk(15, 00, 17, 00, "NW_CITY_MERCHANT_PATH_28_B");
	TA_Stand_Eating(17, 00, 18, 00, "NW_CITY_MERCHANT_PATH_30");
	TA_Cook_Stove(18, 00, 01, 00, "TAVERN02");
	TA_Stand_Drinking(01, 00, 05, 00, "NW_CITY_TAVERN_IN_04");
	TA_Stand_Sweeping(05, 00, 06, 00, "NW_CITY_MERCHANT_TAVERN01_IN");
};
