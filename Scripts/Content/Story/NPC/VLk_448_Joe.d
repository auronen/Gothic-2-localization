instance VLK_448_Joe(Npc_Default)
{
	// -------- NPC --------
	name							= "Joe";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0;

	voice							= 10;
	id								= 448;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_ToughBald, BodyTex_P, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 35);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	// EquipItem(self, ItMw_1h_VLK_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_448;
};

func void Rtn_PreStart_448()
{
	TA_Sit_Campfire(08, 00, 23, 00, "NW_CITY_MERCHANT_TOWER_01");
	TA_Sit_Campfire(23, 00, 08, 00, "NW_CITY_MERCHANT_TOWER_01");
};

func void Rtn_Start_448()
{
	TA_Stand_Drinking(08, 00, 23, 00, "NW_CITY_HABOUR_TAVERN01_08");
	TA_Stand_Drinking(23, 00, 08, 00, "NW_CITY_HABOUR_TAVERN01_08");
};
