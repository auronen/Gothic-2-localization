instance VLK_455_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BUERGER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 8;
	id								= 455;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_NormalBart06, BodyTex_N, ITAR_Vlk_L);
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
	daily_routine = Rtn_Start_455;
};

func void Rtn_Start_455()
{
	TA_Stand_ArmsCrossed(05, 20, 20, 20, "NW_CITY_MERCHANT_PATH_14_C");
	TA_Smalltalk(20, 20, 05, 20, "NW_CITY_MERCHANT_SHOP03_FRONT_03");
};

func void Rtn_VatrasAway_455()
{
	TA_Sit_Bench(07, 20, 20, 20, "NW_CITY_MERCHANT_TAVERN01_FRONT");
	TA_Smalltalk(20, 20, 07, 20, "NW_CITY_MERCHANT_SHOP03_FRONT_03");
};
