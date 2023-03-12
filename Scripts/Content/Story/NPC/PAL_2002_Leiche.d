instance PAL_2002_Leiche(Npc_Default)
{
	// -------- NPC --------
	name							= "Silvestro";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 4;
	id								= 2002;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 1;
	attribute[ATR_HITPOINTS]		= 1;

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal20, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	CreateInvItems(self, ItWr_Silvestro_MIS, 1);
	CreateInvItems(self, ItPO_Mana_02, 2);
	CreateInvItems(self, ItmI_Gold, 100);
	CreateInvItems(self, ItPo_Health_02, 2);

	// -------- daily routine --------
	daily_routine = Rtn_Start_2002;
};

func void Rtn_Start_2002()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_MINE3_LEICHE_01");
	TA_Stand_Guarding(23, 00, 08, 00, "OW_MINE3_LEICHE_01");
};
