instance VLK_428_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 428;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe4", FaceBabe_N_VlkBlonde, BodyTex_N, ITAR_VlkBabe_L);
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
	daily_routine = Rtn_Start_428;
};

func void Rtn_Start_428()
{
	TA_Stand_ArmsCrossed(05, 10, 20, 17, "NW_CITY_MERCHANT_PATH_14_C");
	TA_Smalltalk(20, 17, 05, 10, "NW_CITY_MERCHANT_PATH_32");
};

func void Rtn_VatrasAway_428()
{
	TA_Smalltalk(05, 10, 20, 17, "NW_CITY_MERCHANT_PATH_14_A");
	TA_Smalltalk(20, 17, 05, 10, "NW_CITY_MERCHANT_PATH_32");
};
