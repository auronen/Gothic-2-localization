instance STRF_1152_Leiche(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Straefling;
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_STRF;
	flags							= 0;

	voice							= 8;
	id								= 1152;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 1;
	attribute[ATR_HITPOINTS]		= 1;

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_Tough02, BodyTex_L, ITAR_BAU_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 15);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1152;
};

func void Rtn_Start_1152()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_MINE3_LEICHE_02");
	TA_Stand_Guarding(23, 00, 08, 00, "OW_MINE3_LEICHE_02");
};
