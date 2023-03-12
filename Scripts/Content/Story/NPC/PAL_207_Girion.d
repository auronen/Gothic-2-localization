instance Pal_207_Girion(Npc_Default)
{
	// -------- NPC --------
	name							= "Girion";
	npctype							= NpcType_Main;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 8;
	id								= 207;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Lefty, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 55);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_207;
};

func void Rtn_Start_207()
{
	TA_Practice_Sword(06, 00, 07, 03, "NW_CITY_GIRION");
	TA_Stand_ArmsCrossed(07, 03, 19, 00, "NW_CITY_GIRION");
	TA_Sit_Throne(19, 00, 22, 59, "NW_CITY_UPTOWN_HUT_03_SIT");
	TA_Sleep(22, 59, 06, 00, "NW_CITY_LEOMAR_BED_02");
};

func void Rtn_WaitForShip_207()
{
	TA_Stand_WP(08, 00, 23, 00, "NW_CITY_WAY_TO_SHIP_25");
	TA_Stand_WP(23, 00, 08, 00, "NW_CITY_WAY_TO_SHIP_25");
};

func void Rtn_Ship_207()
{
	TA_Sit_Bench(08, 00, 23, 00, "SHIP_DECK_18");
	TA_Sit_Bench(23, 00, 08, 00, "SHIP_DECK_18");
};
