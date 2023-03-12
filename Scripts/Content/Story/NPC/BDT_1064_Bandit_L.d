instance BDT_1064_Bandit_L(Npc_Default)
{
	// -------- NPC --------
	name							= "Wache";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 4;
	id								= 1064;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Normal_Orik, BodyTex_B, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;
	aivar[AIV_NewsOverride]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1064;
};

func void RTn_Start_1064()
{
	TA_Guard_Passage(00, 00, 12, 00, "NW_CASTLEMINE_TOWER_BEYOND");
	TA_Guard_Passage(12, 00, 00, 00, "NW_CASTLEMINE_TOWER_BEYOND");
};
