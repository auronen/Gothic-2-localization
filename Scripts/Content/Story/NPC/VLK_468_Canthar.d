instance VLK_468_Canthar(Npc_Default)
{
	// -------- NPC --------
	name							= "Canthar";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 9;
	id								= 468;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak_Orry, BodyTex_N, ITAR_Vlk_M);
	Mdl_SetModelFatness(self, 1.8);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

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
	B_SetFightSkills(self, 50);

	// -------- inventory --------
	// CreateInvItems(self, ItWr_Passierschein, 1);wird jetzt über Dialog vergeben, damit nicht mehr im Trade auftaucht
	CreateInvItems(self, ItMi_Gold, 50);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_SWORD);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_468;
};

func void Rtn_PreStart_468()
{
	TA_Sit_Bench(08, 00, 23, 00, "NW_FARM1_PATH_CITY_SHEEP_05");
	TA_Sit_Bench(23, 00, 08, 00, "NW_FARM1_PATH_CITY_SHEEP_05");
};

func void Rtn_Start_468()
{
	TA_Sit_Bench(07, 45, 19, 45, "NW_CITY_MERCHANT_PATH_30");
	TA_Smoke_Waterpipe(19, 45, 00, 45, "NW_CITY_RAUCH_05");
	TA_Sleep(00, 45, 07, 45, "NW_CITY_HOTEL_BED_01");
};

func void Rtn_Marktstand_468()
{
	TA_Stand_ArmsCrossed(07, 45, 19, 45, "NW_CITY_SARAH");
	TA_Smoke_Waterpipe(19, 45, 00, 45, "NW_CITY_RAUCH_05");
	TA_Sleep(00, 45, 07, 45, "NW_CITY_HOTEL_BED_01");
};

func void Rtn_Knast_468()
{
	TA_Sit_Bench(08, 00, 23, 00, "NW_CITY_HABOUR_KASERN_RENGARU");
	TA_Sit_Bench(23, 00, 08, 00, "NW_CITY_HABOUR_KASERN_RENGARU");
};
