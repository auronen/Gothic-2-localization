instance VLK_421_Valentino(Npc_Default)
{
	// -------- NPC --------
	name							= "Valentino";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 3;
	id								= 421;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald.", Face_N_Normal03, BodyTex_N, ITAR_VLK_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	CreateInvItems(self, ItMi_Gold, 200);
	CreateInvItems(self, ItKe_Valentino, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_421;
};

func void Rtn_Start_421()
{
	TA_Stand_ArmsCrossed(10, 00, 20, 00, "NW_CITY_MERCHANT_PATH_16");
	TA_Sit_Chair(20, 00, 04, 00, "NW_CITY_MERCHANT_TAVERN01_BACKROOM");
	TA_Sleep(04, 00, 10, 00, "NW_CITY_REICH03_BED_01");
};

func void Rtn_VatrasAway_421()
{
	TA_Smalltalk(10, 00, 20, 00, "NW_CITY_MERCHANT_TAVERN01_01");
	TA_Sit_Chair(20, 00, 04, 00, "NW_CITY_MERCHANT_TAVERN01_BACKROOM");
	TA_Sleep(04, 00, 10, 00, "NW_CITY_REICH03_BED_01");
};
