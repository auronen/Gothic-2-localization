instance BDT_10008_Addon_Bandit(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 10008;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_B_Tough_Silas, BodyTex_B, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 2);
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
	EquipItem(self, ItMw_2H_OrcAxe_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10008;
};

func void Rtn_Start_10008()
{
	TA_Cook_Cauldron(08, 00, 12, 00, "BL_DOWN_CENTER_07");
	TA_Pee(12, 00, 12, 05, "BL_DOWN_CENTER_07_C");
	TA_Cook_Cauldron(12, 05, 16, 00, "BL_DOWN_CENTER_07");
	TA_Pee(16, 00, 16, 05, "BL_DOWN_CENTER_07_C");
	TA_Cook_Cauldron(16, 05, 00, 00, "BL_DOWN_CENTER_07");
	TA_Pee(00, 00, 00, 05, "BL_DOWN_CENTER_07_C");
	TA_Sit_Bench(00, 05, 08, 00, "BL_DOWN_RING_05");
};
