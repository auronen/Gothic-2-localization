instance PIR_1351_Addon_Samuel(Npc_Default)
{
	// -------- NPC --------
	name							= "Samuel";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 14;
	id								= 1351;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBAld", Face_B_Saturas, BodyTex_B, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Mace_L_03);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1351;
};

func void Rtn_Start_1351()
{
	TA_Potion_Alchemy(06, 00, 08, 00, "ADW_PIRATECAMP_CAVE1_04");
	TA_Stand_Drinking(08, 00, 10, 00, "ADW_PIRATECAMP_CAVE1_02");
	TA_Potion_Alchemy(10, 00, 12, 00, "ADW_PIRATECAMP_CAVE1_04");
	TA_Stand_Drinking(12, 00, 14, 00, "ADW_PIRATECAMP_CAVE1_02");
	TA_Potion_Alchemy(14, 00, 16, 00, "ADW_PIRATECAMP_CAVE1_04");
	TA_Stand_Drinking(16, 00, 18, 00, "ADW_PIRATECAMP_CAVE1_02");
	TA_Potion_Alchemy(18, 00, 20, 00, "ADW_PIRATECAMP_CAVE1_04");
	TA_Stand_Drinking(20, 00, 22, 00, "ADW_PIRATECAMP_CAVE1_02");

	TA_Potion_Alchemy(22, 00, 06, 00, "ADW_PIRATECAMP_CAVE1_04");
};
