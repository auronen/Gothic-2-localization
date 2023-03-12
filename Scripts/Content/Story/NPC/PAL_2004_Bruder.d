instance PAL_2004_Bruder(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_PALADIN;
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 4;
	id								= 2004;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 1;
	attribute[ATR_HITPOINTS]		= 1;

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal02, BodyTex_N, ITAR_PAL_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItRu_PalLight, 1);

	// -------- daily routine --------
	daily_routine = Rtn_Start_2004;
};

func void Rtn_Start_2004()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_SPAWN_BRUDER");
	TA_Stand_Guarding(23, 00, 08, 00, "OW_SPAWN_BRUDER");
};
