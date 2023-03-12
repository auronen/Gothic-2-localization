instance DMT_1299_OberDementor_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Schwarzmagier";
	npctype							= NpcType_Main;
	guild							= GIL_DMT;
	flags							= 0;

	voice							= 09;
	id								= 1299;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_MadPsi, BodyTex_N, ITAR_Xardas);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;
	aivar[AIV_MagicUser]			= MAGIC_ALWAYS;

	bodyStateInterruptableOverride = TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 90);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	// Joly: CreateInvItems(self, ItKe_LastDoorToUndeadDrgDI_MIS, 1);
	CreateInvItems(self, ItWr_LastDoorToUndeadDrgDI_MIS, 1);
	CreateInvItems(self, ItKe_ChestMasterDementor_MIS, 1);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1299;
};

func void Rtn_Start_1299()
{
	TA_Stand_Dementor(08, 00, 23, 00, "DI_SCHWARZMAGIER");
	TA_Stand_Dementor(23, 00, 08, 00, "DI_SCHWARZMAGIER");
};
