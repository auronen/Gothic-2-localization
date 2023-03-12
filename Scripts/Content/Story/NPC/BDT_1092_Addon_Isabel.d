instance BDT_1092_Addon_Isabel(Npc_Default)
{
	// -------- NPC --------
	name							= "Isabel";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 17;
	id								= 1092;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_BlackHair, BodyTexBabe_S, NO_ARMOR);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- aivars --------
	aivar[AIV_IgnoresArmor]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 25);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	// EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1092;
};

func void Rtn_Start_1092()
{
	TA_Smalltalk(07, 01, 12, 00, "BL_INN_UP_07");
	TA_Stand_Drinking(12, 00, 01, 05, "BL_INN_UP_05");
	TA_Sleep(01, 05, 07, 01, "BL_INN_UPSIDE_SLEEP_02");
};
