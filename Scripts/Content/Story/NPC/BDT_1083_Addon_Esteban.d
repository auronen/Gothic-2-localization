instance BDT_1083_Addon_Esteban(Npc_Default)
{
	// -------- NPC --------
	name							= "Esteban";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 7;
	id								= 1083;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_L_ToughBart_Quentin, BodyTex_L, ITAR_BDT_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- aivars --------
	aivar[AIV_StoryBandit_Esteban]	= TRUE;
	aivar[AIV_StoryBandit]			= TRUE;
	aivar[AIV_NewsOverride]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ITMI_Addon_Stone_01, 5); // MISSIONITEMS!

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1083;
};

func void Rtn_Start_1083()
{
	TA_Stand_ArmsCrossed(09, 00, 10, 00, "BL_MID_07");
	TA_Stand_ArmsCrossed(10, 00, 09, 00, "BL_MID_07");
};
