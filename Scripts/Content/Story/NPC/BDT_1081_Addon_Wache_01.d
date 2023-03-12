instance BDT_1081_Addon_Wache_01(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Addon_Esteban_Guard;
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 4;
	id								= 1081;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Normal14, BodyTex_N, ITAR_Bloodwyn_Addon);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_StoryBandit_Esteban]	= TRUE;
	aivar[AIV_StoryBandit]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Pal_Sword);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1081;
};

func void Rtn_Start_1081()
{
	TA_Stand_Guarding(00, 00, 00, 00, "BL_MID_07_B");
	TA_Stand_Guarding(00, 00, 00, 00, "BL_MID_07_B");
};

func void Rtn_Ambush_1081()
{
	TA_Stand_Guarding(00, 00, 00, 00, "BL_INN_OUTSIDE_01");
	TA_Stand_Guarding(00, 00, 00, 00, "BL_INN_OUTSIDE_01");
};
