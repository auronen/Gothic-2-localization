instance BDT_1084_Addon_Senyan(Npc_Default)
{
	// -------- NPC --------
	name							= "Senyan";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 12;
	id								= 1084;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Tough_Pacho, BodyTex_B, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 0.75);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- aivars --------
	aivar[AIV_NewsOverride]			= TRUE;
	aivar[AIV_StoryBandit]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1084;
};

func void Rtn_Start_1084()
{
	TA_Stand_Guarding(10, 00, 12, 00, "BL_DOWN_CENTER_03");
	TA_Stand_Guarding(12, 00, 10, 00, "BL_DOWN_CENTER_03");
};
