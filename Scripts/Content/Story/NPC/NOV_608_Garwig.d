instance NOV_608_Garwig(Npc_Default)
{
	// -------- NPC --------
	name							= "Garwig";
	npctype							= NpcType_Main;
	guild							= GIL_NOV;
	// level für Sleep- Scroll nötig M.F.= // LEVEL für Sleep- Scroll nötig M.F.;
	level							= 1;
	flags							= 0;

	voice							= 6;
	id								= 608;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 60;
	attribute[ATR_DEXTERITY]		= 60;
	attribute[ATR_MANA_MAX]			= 60;
	attribute[ATR_MANA]				= 60;
	attribute[ATR_HITPOINTS_MAX]	= 500;
	attribute[ATR_HITPOINTS]		= 500;

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_Tough02, BodyTex_L, ITAR_NOV_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Nov_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_608;
};

func void Rtn_Start_608()
{
	TA_Guard_Hammer(08, 00, 23, 00, "NW_MONASTERY_SANCTUM_02");
	TA_Guard_Hammer(23, 00, 08, 00, "NW_MONASTERY_SNACTUM_02");
};
