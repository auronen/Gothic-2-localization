instance BDT_1060_Dexter(Npc_Default)
{
	// -------- NPC --------
	name							= "Dexter";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 9;
	id								= 1060;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart_Dexter, BodyTex_N, ITAR_DIEGO);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItKE_Dexter, 1);
	CreateInvItems(self, ItWr_RavensKidnapperMission_Addon, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_ShortSword2);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1060;
};

// ------ TA ------
func void RTn_Start_1060()
{
	TA_Sit_Throne(00, 00, 12, 00, "NW_CASTLEMINE_HUT_10");
	TA_Sit_Throne(12, 00, 00, 00, "NW_CASTLEMINE_HUT_10");
};
