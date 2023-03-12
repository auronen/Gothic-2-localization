instance BDT_1077_Addon_Bandit(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NPCTYPE_TAL_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 1077;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_P_Normal01, BodyTex_P, ITAR_BDT_M);
	Mdl_SetModelFatness(self, - 0.5);
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
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1077;
};

func void Rtn_Start_1077()
{
	TA_Smalltalk(06, 00, 12, 00, "BL_SMALLTALK_01");
	TA_Smith_Sharp(12, 00, 22, 04, "ADW_PATH_TO_BL_SHARP");
	TA_Roast_Scavenger(22, 04, 06, 00, "ADW_SWAMP_ROAST");
};
