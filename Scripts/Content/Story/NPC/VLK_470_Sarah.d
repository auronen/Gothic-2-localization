instance VLK_470_Sarah(Npc_Default)
{
	// -------- NPC --------
	name							= "Sarah";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 470;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_Blondie, BodyTexBabe_N, ITAR_VlkBabe_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_470;
};

func void Rtn_Start_470()
{
	TA_Stand_ArmsCrossed(05, 15, 20, 15, "NW_CITY_SARAH");
	TA_Sleep(20, 15, 05, 15, "NW_CITY_HOTEL_BED_08");
};

func void Rtn_Knast_470()
{
	TA_Stand_ArmsCrossed(08, 00, 20, 00, "NW_CITY_HABOUR_KASERN_RENGARU");
	TA_Stand_ArmsCrossed(20, 00, 08, 00, "NW_CITY_HABOUR_KASERN_RENGARU");
};

func void Rtn_Tot_470()
{
	TA_Stand_ArmsCrossed(05, 15, 20, 15, "TOT");
	TA_Sleep(20, 15, 05, 15, "TOT");
};
