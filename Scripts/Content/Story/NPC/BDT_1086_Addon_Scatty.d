instance BDT_1086_Addon_Scatty(Npc_Default)
{
	// -------- NPC --------
	name							= "Scatty";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 1086;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_L_Scatty, BodyTex_L, ITAR_DIEGO);
	Mdl_SetModelFatness(self, 1.6);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 75);

	// -------- inventory --------
	CreateInvItems(self, ItMi_GoldNugget_Addon, 5);
	CreateInvItems(self, ItPo_Health_03, 2);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Schwert5);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1086;
};

func void Rtn_Start_1086()
{
	TA_Stand_Guarding(19, 00, 20, 00, "BL_MINELAGER_06");
	TA_Stand_Guarding(20, 00, 09, 00, "BL_MINELAGER_06");
};
