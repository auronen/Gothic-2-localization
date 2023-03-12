instance BDT_1072_Addon_Logan(Npc_Default)
{
	// -------- NPC --------
	name							= "Logan";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 10;
	id								= 1072;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Cipher_neu, BodyTex_N, ITAR_BDT_M);
	Mdl_SetModelFatness(self, - 0.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_NewsOverride]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);
	EquipItem(self, ItRw_Bow_M_02);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1072;
};

func void Rtn_Start_1072()
{
	TA_Stand_Guarding(09, 00, 21, 00, "ADW_BANDIT_VP3_03");
	TA_Stand_Guarding(21, 00, 09, 00, "ADW_BANDIT_VP3_03");
};

func void Rtn_Jagd_1072()
{
	TA_Stand_Guarding(09, 00, 21, 00, "ADW_BANDIT_VP3_05");
	TA_Stand_Guarding(21, 00, 09, 00, "ADW_BANDIT_VP3_05");
};

func void Rtn_Lager_1072()
{
	TA_Stand_Drinking(09, 00, 21, 00, "BL_INN_03_C");
	TA_Stand_Drinking(21, 00, 09, 00, "BL_INN_03_C");
};

func void Rtn_Mine_1072()
{
	TA_Pick_Ore(10, 00, 20, 00, "ADW_MINE_PICK_08");
	TA_Pick_Ore(20, 00, 10, 00, "ADW_MINE_PICK_08");
};
