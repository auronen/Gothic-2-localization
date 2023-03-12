instance VLK_450_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BUERGER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 6;
	id								= 450;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak_Herek, BodyTex_N, ITAR_Vlk_M);
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
	EquipItem(self, ItMw_1h_VLK_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_450;
};

func void Rtn_Start_450()
{
	TA_Stand_ArmsCrossed(05, 00, 20, 00, "NW_CITY_MERCHANT_PATH_15");
	TA_Smalltalk(20, 00, 03, 50, "NW_CITY_MERCHANT_STAND_01");
	TA_Smalltalk(03, 50, 05, 00, "NW_CITY_TAVERN_IN_06");
};

func void Rtn_VatrasAway_450()
{
	TA_Smalltalk(05, 00, 20, 00, "NW_CITY_MERCHANT_PATH_14");
	TA_Smalltalk(20, 00, 05, 00, "NW_CITY_MERCHANT_STAND_01");
};
