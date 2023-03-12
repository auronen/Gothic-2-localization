instance VLK_492_Rengaru(Npc_Default)
{
	// -------- NPC --------
	name							= "Rengaru";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 7;
	id								= 492;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_ToughBart01, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	CreateInvItems(self, ItMi_Gold, 50); // hat er Nagur geklaut! Muss genau 50 im Inv haben M.F.

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_492;
};

func void Rtn_Start_492()
{
	TA_Stand_ArmsCrossed(05, 15, 20, 15, "NW_CITY_MERCHANT_PATH_36");
	TA_Stand_Drinking(20, 15, 05, 15, "NW_CITY_MERCHANT_PATH_33_B");
};

func void Rtn_RunAway_492()
{
	TA_FleeToWP(08, 00, 23, 00, "NW_CITY_HABOUR_KASERN_05_01");
	TA_FleeToWP(23, 00, 08, 00, "NW_CITY_HABOUR_KASERN_05_01");
};

func void Rtn_Prison_492()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "NW_CITY_HABOUR_KASERN_RENGARU");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "NW_CITY_HABOUR_KASERN_RENGARU");
};
