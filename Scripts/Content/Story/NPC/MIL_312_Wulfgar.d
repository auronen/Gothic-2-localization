instance Mil_312_Wulfgar(Npc_Default)
{
	// -------- NPC --------
	name							= "Wulfgar";
	npctype							= NpcType_Main;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 4;
	id								= 312;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart06, BodyTex_N, ITAR_MIL_M);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_312;
};

func void Rtn_PreStart_312()
{
	TA_Stand_ArmsCrossed(06, 55, 21, 00, "NW_CITY_HABOUR_KASERN_CENTRE_01");
	TA_Sit_Throne(21, 00, 05, 00, "NW_CITY_KASERN_BARRACK02_02");
	TA_Practice_Sword(05, 00, 06, 55, "NW_CITY_HABOUR_KASERN_CENTRE_01");
};

func void Rtn_Start_312()
{
	TA_Stand_ArmsCrossed(06, 55, 21, 00, "NW_CITY_HABOUR_KASERN_CENTRE_01");
	TA_Sit_Throne(21, 00, 00, 07, "NW_CITY_KASERN_BARRACK02_02");
	TA_Smalltalk(00, 07, 05, 00, "NW_CITY_HABOUR_KASERN_OFFICE");
	TA_Practice_Sword(05, 00, 06, 55, "NW_CITY_HABOUR_KASERN_CENTRE_01");
};
