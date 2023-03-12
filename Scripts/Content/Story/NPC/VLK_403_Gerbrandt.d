instance VLK_403_Gerbrandt(Npc_Default)
{
	// -------- NPC --------
	name							= "Gerbrandt";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 10;
	id								= 403;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_L_Tough_Santino, BodyTex_L, ITAR_VLK_H);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItSe_GoldPocket100, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_403;
};

func void Rtn_Start_403()
{
	TA_Sleep(22, 00, 08, 00, "NW_CITY_GERBRANDT_BED_01");

	TA_Smalltalk(08, 00, 11, 00, "NW_CITY_SMALLTALK_02");
	TA_Sit_Bench(11, 00, 15, 00, "NW_CITY_UPTOWN_PATH_23_B");
	TA_Smalltalk(15, 00, 18, 00, "NW_CITY_SMALLTALK_02");
	TA_Sit_Bench(18, 00, 22, 00, "NW_CITY_UPTOWN_PATH_23_B");
};

func void Rtn_WaitForDiego_403()
{
	TA_Sleep(22, 00, 08, 00, "NW_CITY_GERBRANDT_BED_01");
	TA_Stand_WP(08, 00, 22, 00, "NW_CITY_UPTOWN_PATH_23");
};

func void Rtn_NewLife_403()
{
	TA_Smalltalk(22, 00, 08, 00, "NW_CITY_HABOUR_POOR_AREA_PATH_03");
	TA_Smalltalk(08, 00, 11, 00, "NW_CITY_HABOUR_POOR_AREA_PATH_03");
	TA_Smalltalk(11, 00, 15, 00, "NW_CITY_HABOUR_POOR_AREA_PATH_03");
	TA_Smalltalk(15, 00, 18, 00, "NW_CITY_HABOUR_POOR_AREA_PATH_03");
	TA_Smalltalk(18, 00, 22, 00, "NW_CITY_HABOUR_POOR_AREA_PATH_03");
};
