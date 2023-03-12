instance BDT_10005_Addon_Wache_02(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Addon_Esteban_Guard;
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 13;
	id								= 10005;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_B_Normal_Orik, BodyTex_B, ITAR_Bloodwyn_Addon);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_StoryBandit_Esteban]	= TRUE;
	aivar[AIV_StoryBandit]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 45);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Axe);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10005;
};

func void Rtn_Start_10005()
{
	TA_Stand_Guarding(09, 00, 21, 00, "BL_MID_07_SHARP");
	TA_Stand_Guarding(21, 00, 09, 00, "BL_MID_07_SHARP");
};

func void Rtn_Ambush_10005()
{
	TA_Stand_Guarding(09, 00, 21, 00, "BL_INN_OUTSIDE_02");
	TA_Stand_Guarding(21, 00, 09, 00, "BL_INN_OUTSIDE_02");
};
