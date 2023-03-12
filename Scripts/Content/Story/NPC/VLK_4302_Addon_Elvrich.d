instance VLK_4302_Addon_Elvrich(Npc_Default)
{
	// -------- NPC --------
	name							= "Elvrich";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 4;
	id								= 4302;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_B_Normal01, BodyTex_B, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_NoFightParker]		= TRUE; // Joly: Gefangener der Banditen

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4302;
};

func void Rtn_Start_4302()
{
	TA_Sit_Campfire(08, 00, 23, 00, "NW_BIGMILL_FARM3_RANGERBANDITS_ELVRICH");
	TA_Sit_Campfire(23, 00, 08, 00, "NW_BIGMILL_FARM3_RANGERBANDITS_ELVRICH");
};

func void Rtn_BackInTheCity_4302()
{
	TA_Repair_Hut(06, 00, 09, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Saw(09, 00, 13, 05, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut(13, 05, 14, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Saw(14, 00, 16, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut(16, 00, 17, 05, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut(17, 05, 18, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut(18, 00, 19, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Saw(19, 00, 20, 00, "NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut(20, 00, 00, 00, "NW_CITY_MERCHANT_HUT_01_FRONT");
	TA_Sit_Bench(00, 00, 06, 00, "NW_CITY_MERCHANT_HUT_01_FRONT");
};
