instance BDT_10029_Addon_Buddler(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Addon_Buddler;
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 6;
	id								= 10029;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_Jackal, BodyTex_L, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10029;
};

func void Rtn_Start_10029()
{
	TA_Stand_Drinking(06, 00, 12, 00, "ADW_MINE_25");
	TA_Stand_Drinking(12, 00, 06, 00, "ADW_MINE_25");
};

func void Rtn_Work_10029()
{
	TA_Pick_Ore(08, 00, 23, 00, "ADW_MINE_PICK_01");
	TA_Pick_Ore(23, 00, 08, 00, "ADW_MINE_PICK_01");
};
