instance BDT_10026_Addon_Wache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Wache;
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 13;
	id								= 10026;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal_Erpresser, BodyTex_N, ITAR_Bloodwyn_Addon);
	Mdl_SetModelFatness(self, 1);
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
	EquipItem(self, ItMw_2h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10026;
};

func void Rtn_Start_10026()
{
	TA_Stand_Eating(06, 00, 12, 00, "ADW_MINE_18");
	TA_Stand_Eating(12, 00, 06, 00, "ADW_MINE_18");
};
