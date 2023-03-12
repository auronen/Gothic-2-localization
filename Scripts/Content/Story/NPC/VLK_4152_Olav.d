instance VLK_4152_Olav(Npc_Default)
{
	// -------- NPC --------
	name							= "Olav";
	npctype							= NPCTYPE_OCAMBIENT;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 4;
	id								= 4152;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 1;
	attribute[ATR_HITPOINTS]		= 1;

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart22, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItSe_Olav, 1);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4152;
};

func void Rtn_Start_4152()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_WOLFHUT_01");
	TA_Stand_Guarding(23, 00, 08, 00, "OW_WOLFHUT_01");
};
