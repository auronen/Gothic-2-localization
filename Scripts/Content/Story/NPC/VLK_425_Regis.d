instance VLK_425_Regis(Npc_Default)
{
	// -------- NPC --------
	name							= "Regis";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 13;
	id								= 425;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Mordrag, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_425;
};

func void Rtn_Start_425()
{
	TA_Sit_Bench(05, 30, 20, 30, "NW_CITY_REGIS");
	TA_Smalltalk(20, 30, 00, 30, "NW_CITY_MERCHANT_PATH_14_A");
	TA_Sit_Chair(00, 30, 05, 30, "NW_CITY_TAVERN_IN_04");
};
