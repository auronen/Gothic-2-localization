instance VLK_462_Thorben(Npc_Default)
{
	// -------- NPC --------
	name							= "Thorben";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 6;
	id								= 462;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal04, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, itke_lockpick, 12);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_462;
};

func void Rtn_Start_462()
{
	TA_Saw(06, 00, 09, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut(09, 00, 13, 05, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Smalltalk(13, 05, 14, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut(14, 00, 16, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Saw(16, 00, 17, 05, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Smalltalk(17, 05, 18, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Saw(18, 00, 19, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut(19, 00, 20, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Sit_Bench(20, 00, 00, 00, "NW_CITY_MERCHANT_HUT_01_FRONT");
	TA_Sleep(00, 00, 06, 00, "NW_CITY_BED_BOSPER");
};
