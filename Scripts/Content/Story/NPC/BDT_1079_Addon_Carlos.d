instance BDT_1079_Addon_Carlos(Npc_Default)
{
	// -------- NPC --------
	name							= "Carlos";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 12;
	id								= 1079;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FIGHTER", Face_L_Ian, BodyTex_L, ITAR_Bloodwyn_Addon);
	Mdl_SetModelFatness(self, 0.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1079;
};

func void Rtn_PreStart_1079()
{
	TA_Stand_Guarding(00, 00, 12, 00, "BL_WAIT_CARLOS");
	TA_Stand_Guarding(12, 00, 00, 00, "BL_WAIT_CARLOS");
};

func void Rtn_Start_1079()
{
	TA_Stand_Guarding(06, 00, 20, 00, "ADW_PATH_TO_BL_02");
	TA_Stand_Guarding(20, 00, 00, 00, "BANDIT_FIGHT");
	TA_Stand_Eating(00, 00, 03, 00, "BANDIT_FIGHT");
	TA_Stand_Drinking(03, 00, 06, 00, "BANDIT_FIGHT");
};
