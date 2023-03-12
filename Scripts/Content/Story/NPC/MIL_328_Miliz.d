instance Mil_328_Miliz(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Wache;
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 8;
	id								= 328;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart17, BodyTex_N, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_DropDeadAndKill]		= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 33);

	// -------- inventory --------
	CreateInvItems(self, ItKe_Storage, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_328;
};

func void Rtn_Start_328()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_CITY_HABOUR_HUT_03_IN_05");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_CITY_HABOUR_HUT_03_IN_05");
};
