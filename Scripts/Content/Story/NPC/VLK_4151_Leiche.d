instance VLK_4151_Leiche(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_WAFFENKNECHT;
	npctype							= NPCTYPE_OCAMBIENT;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 1;
	id								= 4151;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 1;
	attribute[ATR_HITPOINTS]		= 1;

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart10, BodyTex_N, ITAR_MIL_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- daily routine --------
	daily_routine = Rtn_Start_4151;
};

func void Rtn_Start_4151()
{
	TA_Stand_Guarding(08, 00, 22, 00, "OW_SPAWN_TRACK_LEICHE_00");
	TA_Stand_Guarding(22, 00, 08, 00, "OW_SPAWN_TRACK_LEICHE_00");
};
