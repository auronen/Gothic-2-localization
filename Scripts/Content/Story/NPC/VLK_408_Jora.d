instance VLK_408_Jora(Npc_Default)
{
	// -------- NPC --------
	name							= "Jora";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 8;
	id								= 408;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal02, BodyTex_N, ITAR_VLK_M);
	Mdl_SetModelFatness(self, 1.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_AlriksSword_Mis); // WICHTIG

	// -------- daily routine --------
	daily_routine = Rtn_Start_408;
};

func void Rtn_Start_408()
{
	TA_Stand_ArmsCrossed(05, 15, 20, 04, "NW_CITY_MERCHANT_PATH_38");
	TA_Smalltalk(20, 04, 00, 06, "NW_CITY_BEER_06");
	TA_Sleep(00, 06, 05, 15, "NW_CITY_HOTEL_BED_03");
};
