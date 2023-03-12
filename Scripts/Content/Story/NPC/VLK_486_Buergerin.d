instance VLK_486_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buergerin; // Zuris Frau
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 486;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_Lilo, BodyTex_N, ITAR_VlkBabe_M);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

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
	daily_routine = Rtn_Start_486;
};

func void Rtn_Start_486()
{
	TA_Stand_ArmsCrossed(05, 30, 06, 00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Smalltalk(06, 00, 08, 00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Stand_ArmsCrossed(08, 00, 09, 00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Smalltalk(09, 00, 11, 00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Stand_ArmsCrossed(11, 00, 12, 00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Smalltalk(12, 00, 14, 00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Stand_ArmsCrossed(14, 00, 15, 00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Smalltalk(15, 00, 17, 00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Stand_ArmsCrossed(17, 00, 17, 30, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Cook_Stove(17, 30, 20, 00, "NW_CITY_ZURIS_FRAU_COOK");
	TA_Sit_Chair(20, 00, 23, 30, "NW_CITY_MERCHANT_HUT_02_IN_02");
	TA_Sleep(23, 30, 05, 30, "NW_CITY_BED_ZURIS_FRAU");
};
