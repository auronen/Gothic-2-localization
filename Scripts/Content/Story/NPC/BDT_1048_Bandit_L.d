instance BDT_1048_Bandit_L(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 1048;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Tough_Pacho, BodyTex_B, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1048;
};

// ------ TA ------
func void RTn_Start_1048()
{
	TA_Sit_Campfire(00, 00, 12, 00, "NW_CASTLEMINE_TOWER_CAMPFIRE_02");
	TA_Sit_Campfire(12, 00, 00, 00, "NW_CASTLEMINE_TOWER_CAMPFIRE_02");
};
