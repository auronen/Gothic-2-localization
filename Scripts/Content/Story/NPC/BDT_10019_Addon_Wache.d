instance BDT_10019_Addon_Wache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Addon_Guard;
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 6;
	id								= 10019;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Normal_Spassvogel, BodyTex_N, ITAR_Thorus_Addon);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Krummschwert);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10019;
};

func void Rtn_Start_10019()
{
	TA_Stand_WP(00, 00, 12, 00, "BL_UP_PLACE_04 ");
	TA_Stand_WP(12, 00, 00, 00, "BL_UP_PLACE_04");
};
