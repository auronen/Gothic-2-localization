instance VLK_407_Hakon(Npc_Default)
{
	// -------- NPC --------
	name							= "Hakon";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 12;
	id								= 407;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart20, BodyTex_N, ITAR_VLK_M);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_ShortSword2);

	// -------- daily routine --------
	daily_routine = Rtn_Start_407;
};

func void Rtn_Start_407()
{
	TA_Stand_ArmsCrossed(05, 10, 19, 50, "NW_CITY_HAKON");
	TA_Smoke_Waterpipe(19, 50, 00, 10, "NW_CITY_RAUCH_02");
	TA_Sleep(00, 10, 05, 10, "NW_CITY_HOTEL_BED_04");
};
