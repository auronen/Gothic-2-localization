instance BDT_10002_Addon_Bandit_M(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NPCTYPE_BL_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 10002;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart02, BodyTex_N, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 0);
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
	EquipItem(self, ItMw_1h_Sld_Sword);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10002;
};

func void Rtn_Start_10002()
{
	TA_Stand_ArmsCrossed(09, 00, 21, 00, "XXX");
	TA_Stand_ArmsCrossed(21, 00, 09, 00, "XXX");
};
