instance BDT_1093_Addon_Franco(Npc_Default)
{
	// -------- NPC --------
	name							= "Franco";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 8;
	id								= 1093;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_Tough01, BodyTex_L, ITAR_BDT_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- aivars --------
	aivar[AIV_StoryBandit]			= TRUE;
	aivar[AIV_NewsOverride]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	// CreateInvItems(self, ItAm_Addon_Franco,1); siehe oben
	CreateInvItems(self, ItMi_GoldNugget_Addon, 7);
	CreateInvItems(self, ItAm_Addon_Franco, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1093;
};

func void Rtn_Start_1093()
{
	TA_Stand_Guarding(06, 00, 20, 00, "ADW_PATH_TO_BL_02");
	TA_Stand_Guarding(20, 00, 00, 00, "BANDIT_FIGHT");
	TA_Stand_Eating(00, 00, 03, 00, "BANDIT_FIGHT");
	TA_Stand_Drinking(03, 00, 06, 00, "BANDIT_FIGHT");
};
