instance BDT_1015_Bandit_L(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 6;
	id								= 1015;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 0);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Normal01, BodyTex_B, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 10);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItWr_BanditLetter_MIS, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = RTN_Start_1015;
};

func void Rtn_Start_1015()
{
	TA_Stand_ArmsCrossed(00, 00, 12, 00, "NW_XARDAS_BANDITS_RIGHT");
	TA_Stand_ArmsCrossed(12, 00, 00, 00, "NW_XARDAS_BANDITS_RIGHT");
};
