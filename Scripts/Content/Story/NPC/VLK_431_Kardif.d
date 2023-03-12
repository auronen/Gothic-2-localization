instance VLK_431_Kardif (Npc_Default)
{
	// -------- NPC --------
	name							= "Kardif";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 14;
	id								= 431;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart04, BodyTex_N, ITAR_Smith);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_431;
};

func void Rtn_Start_431()
{
	TA_Stand_Sweeping(08, 00, 11, 00, "NW_CITY_HABOUR_TAVERN01_SMALLTALK_01");
	TA_Stand_ArmsCrossed(11, 00, 13, 00, "NW_CITY_KARDIF");
	TA_Stand_Sweeping(13, 00, 16, 00, "NW_CITY_HABOUR_TAVERN01_SMALLTALK_01");
	TA_Stand_ArmsCrossed(16, 00, 08, 00, "NW_CITY_KARDIF");
};
