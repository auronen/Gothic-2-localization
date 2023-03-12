instance BDT_1087_Addon_Bandit(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Bandit;
	npctype							= NPCTYPE_TAL_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 1087;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_ToughBald, BodyTex_P, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 90);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1087;
};

func void Rtn_Start_1087()
{
	TA_Sit_Campfire(09, 00, 21, 00, "ADW_BANDIT_VP1_02");
	TA_Sit_Campfire(21, 00, 09, 00, "ADW_BANDIT_VP1_02");
};
