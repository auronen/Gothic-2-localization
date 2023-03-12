instance VLK_426_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 426;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_Lilo, BodyTex_N, ITAR_VlkBabe_M);
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
	daily_routine = Rtn_Start_426;
};

func void Rtn_Start_426()
{
	TA_Stand_ArmsCrossed(05, 05, 20, 05, "NW_CITY_MERCHANT_PATH_15");
	TA_Smalltalk(20, 05, 03, 55, "NW_CITY_MERCHANT_TAVERN01_01");
	TA_Smalltalk(03, 55, 05, 05, "NW_CITY_TAVERN_IN_05");
};

func void Rtn_VatrasAway_426()
{
	TA_Smalltalk(05, 05, 20, 00, "NW_CITY_MERCHANT_STAND_01");
	TA_Smalltalk(20, 00, 05, 05, "NW_CITY_MERCHANT_TAVERN01_01");
};
