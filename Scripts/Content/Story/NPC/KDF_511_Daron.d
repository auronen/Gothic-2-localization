instance KDF_511_Daron(Npc_Default)
{
	// -------- NPC --------
	name							= "Daron";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 10;
	id								= 511;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Raven, BodyTex_N, ITAR_KDF_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- aivars --------
	aivar[AIV_MagicUser]			= MAGIC_ALWAYS;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Nov_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_511;
};

func void Rtn_Start_511()
{
	TA_Stand_Guarding(07, 35, 11, 35, "NW_CITY_MERCHANT_PATH_29_B");
	TA_Stand_Eating(11, 35, 12, 05, "NW_CITY_MERCHANT_PATH_28_F");
	TA_Stand_Guarding(12, 05, 12, 35, "MARKT");
	TA_Stand_Drinking(12, 35, 13, 05, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Eating(13, 05, 13, 25, "NW_CITY_MERCHANT_PATH_30");
	TA_Stand_Guarding(13, 25, 13, 55, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Stand_Guarding(13, 55, 18, 05, "NW_CITY_MERCHANT_PATH_29_B");
	TA_Stand_Drinking(18, 05, 19, 05, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Guarding(19, 05, 20, 05, "NW_CITY_MERCHANT_PATH_29_B");
	TA_Sit_Throne(20, 05, 01, 05, "NW_CITY_BED_ZURIS");
	TA_Sleep(01, 05, 07, 35, "NW_CITY_BED_DARON");
};
