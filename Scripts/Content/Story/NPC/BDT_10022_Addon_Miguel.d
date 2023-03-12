instance BDT_10022_Addon_Miguel(Npc_Default)
{
	// -------- NPC --------
	name							= "Miguel";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 11;
	id								= 10022;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_P_OldMan_Gravo, BodyTex_P, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, Itpo_health_01, 20);
	CreateInvItems(self, Itpo_health_02, 8);
	CreateInvItems(self, Itpo_health_03, 5);
	CreateInvItems(self, Itpo_mana_01, 7);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Nagelknueppel);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10022;
};

func void Rtn_Start_10022()
{
	TA_Pick_FP(06, 00, 12, 00, "ADW_PATH_TO_VP3_01");
	TA_Pick_FP(12, 00, 18, 00, "ADW_PATH_TO_VP3_02");
	TA_Pick_FP(18, 00, 22, 00, "ADW_PATH_TO_VP3_03");

	TA_Sit_Bench(22, 00, 06, 00, "ADW_SWAMP_SIT_BENCH_03");
};
