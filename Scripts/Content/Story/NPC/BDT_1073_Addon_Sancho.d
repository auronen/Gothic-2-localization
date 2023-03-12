instance BDT_1073_Addon_Sancho(Npc_Default)
{
	// -------- NPC --------
	name							= "Sancho";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 6;
	id								= 1073;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Mordrag, BodyTex_N, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1073;
};

func void Rtn_Start_1073()
{
	TA_Stand_Drinking(09, 00, 21, 00, "ADW_BANDIT_VP1_01");
	TA_Stand_Drinking(21, 00, 09, 00, "ADW_BANDIT_VP1_01");
};
