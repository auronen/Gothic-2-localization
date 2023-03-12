instance BDT_1091_Addon_Lucia(Npc_Default)
{
	// -------- NPC --------
	name							= "Lucia";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 16;
	id								= 1091;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_GreyCloth, BodyTexBabe_F, NO_ARMOR);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 25);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1091;
};

func void Rtn_Start_1091()
{
	TA_Stand_WP(07, 00, 12, 00, "BL_INN_05_D");
	TA_Stand_Sweeping(12, 00, 14, 00, "BL_INN_05_B");
	TA_Stand_WP(14, 00, 01, 00, "BL_INN_05_D");
	TA_Potion_Alchemy(01, 00, 04, 00, "BL_INN_UP_LABOR");
	TA_Sleep(04, 00, 07, 00, "BL_INN_UPSIDE_SLEEP_01");
};
