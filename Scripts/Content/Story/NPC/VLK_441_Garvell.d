instance VLK_441_Garvell(Npc_Default)
{
	// -------- NPC --------
	name							= "Garvell";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 4;
	id								= 441;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Lefty, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItSe_GoldPocket25, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_441;
};

func void Rtn_Start_441()
{
	TA_Stand_Drinking(04, 50, 19, 11, "NW_CITY_HABOUR_07");
	TA_Smalltalk(19, 11, 00, 01, "NW_CITY_HABOUR_TAVERN01_SMALLTALK_01");
	TA_Stand_Drinking(00, 01, 04, 50, "NW_CITY_HABOUR_TAVERN01_STAND_01");
};
