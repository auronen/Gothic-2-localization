instance BDT_1076_Addon_Bandit(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NPCTYPE_TAL_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 13;
	id								= 1076;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart06, BodyTex_N, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 90);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Mace_L_04);
	EquipItem(self, ItRw_Bow_M_02);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1076;
};

func void Rtn_Start_1076()
{
	TA_Smalltalk(06, 00, 12, 00, "BL_SMALLTALK_01");
	TA_Cook_Cauldron(12, 00, 22, 00, "ADW_PATH_TO_BL_COOK");
	TA_Stand_Eating(22, 00, 06, 00, "BL_FIGHT_04");
};
