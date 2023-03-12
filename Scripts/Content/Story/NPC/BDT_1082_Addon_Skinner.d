instance BDT_1082_Addon_Skinner(Npc_Default)
{
	// -------- NPC --------
	name							= "Skinner";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 8;
	id								= 1082;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_Tough01, BodyTex_L, ITAR_BDT_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- aivars --------
	aivar[AIV_StoryBandit]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ITKE_ADDON_SKINNER, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Addon_Betty);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1082;
};

func void Rtn_Start_1082()
{
	TA_Sleep(09, 00, 21, 00, "BL_DOWN_HUT_02_SLEEP");
	TA_Sleep(21, 00, 09, 00, "BL_DOWN_HUT_02_SLEEP");
};
