instance BDT_10030_Addon_Buddler(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Addon_Buddler;
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 8;
	id								= 10030;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_P_NormalBart_Cronos, BodyTex_P, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10030;
};

func void Rtn_Start_10030()
{
	TA_Stand_Drinking(06, 00, 12, 00, "ADW_MINE_22");
	TA_Stand_Drinking(12, 00, 06, 00, "ADW_MINE_22");
};
