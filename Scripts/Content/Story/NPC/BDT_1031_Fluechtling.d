instance BDT_1031_Fluechtling(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Fluechtling;
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 7;
	id								= 1031;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Normal01, BodyTex_B, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItWr_MorgahardTip, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_SLD_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1031;
};

func void Rtn_Start_1031()
{
	TA_Sit_Chair(08, 00, 23, 00, "NW_XARDAS_BANDITS_LEFT");
	TA_Sit_Chair(23, 00, 08, 00, "NW_XARDAS_BANDITS_LEFT");
};
