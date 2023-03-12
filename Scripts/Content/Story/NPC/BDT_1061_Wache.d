instance BDT_1061_Wache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Wache;
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 1061;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart17, BodyTex_N, ITAR_Leather_L);
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

	// -------- equipped weapons --------
	EquipItem(self, ItMw_ShortSword2);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1061;
};

// ------ TA ------
func void RTn_Start_1061()
{
	TA_Stand_Guarding(00, 00, 12, 00, "NW_CASTLEMINE_PATH_02");
	TA_Stand_Guarding(12, 00, 00, 00, "NW_CASTLEMINE_PATH_02");
};
