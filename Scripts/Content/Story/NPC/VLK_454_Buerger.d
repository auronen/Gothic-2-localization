instance VLK_454_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BUERGER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 1;
	id								= 454;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_OldMan_Gravo, BodyTex_P, ITAR_Vlk_L);
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
	EquipItem(self, ItMw_1h_Vlk_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_454;
};

func void Rtn_Start_454()
{
	TA_Stand_ArmsCrossed(05, 15, 20, 15, "NW_CITY_MERCHANT_PATH_14_C");
	TA_Smoke_Waterpipe(20, 15, 01, 15, "NW_CITY_RAUCH_03");
	TA_Sit_Chair(01, 15, 05, 15, "NW_CITY_TAVERN_IN_01");
};

func void Rtn_VatrasAway_454()
{
	TA_Sit_Chair(05, 15, 20, 15, "NW_CITY_TAVERN_IN_01");
	TA_Smoke_Waterpipe(20, 15, 01, 15, "NW_CITY_RAUCH_03");
	TA_Sit_Chair(01, 15, 05, 15, "NW_CITY_TAVERN_IN_01");
};
