instance BDT_1078_Addon_Bandit(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NPCTYPE_TAL_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 13;
	id								= 1078;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_N_Richter, BodyTex_N, ITAR_BDT_M);
	Mdl_SetModelFatness(self, -0.75);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Mace_L_01);
	EquipItem(self, ItRw_Bow_M_02);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1078;
};

func void Rtn_Start_1078()
{
	TA_Sit_Campfire(20, 00, 12, 05, "ADW_BANDIT_VP1_08_B");
	TA_Stand_Guarding(12, 05, 20, 00, "ADW_BANDIT_VP1_07_B");
};
