instance Mil_304_Torwache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_TORWACHE;
	npctype							= NpcType_Main;
	guild							= GIL_MIL;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 8;
	id								= 304;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal16, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_304;
};

func void Rtn_Start_304()
{
	TA_Stand_WP(08, 00, 22, 00, "NW_CITY_UPTOWN_GUARD_01");
	TA_Stand_WP(22, 00, 08, 00, "NW_CITY_UPTOWN_GUARD_01");
};
