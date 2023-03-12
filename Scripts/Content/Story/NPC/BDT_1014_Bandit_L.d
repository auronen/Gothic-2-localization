instance BDT_1014_Bandit_L(Npc_Default)
{
	// -------- NPC --------
	name							= "Brago";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 6;
	id								= 1014;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 0);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_N_Mud, BodyTex_N, ITAR_Leather_L);
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
	CreateInvItems(self, ItKe_Bandit, 1);
	CreateInvItems(self, ItWr_SaturasFirstMessage_Addon_Sealed, 1); // ADDON

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Nagelknueppel);

	// -------- daily routine --------
	daily_routine = RTN_Start_1014;
};

func void Rtn_Start_1014()
{
	TA_Stand_ArmsCrossed(00, 00, 12, 00, "NW_XARDAS_BANDITS_LEFT");
	TA_Stand_ArmsCrossed(12, 00, 00, 00, "NW_XARDAS_BANDITS_LEFT");
};
