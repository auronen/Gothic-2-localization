instance Mil_302_Torwache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Torwache;
	npctype							= NpcType_Main;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 6;
	id								= 302;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Normal05, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_302;
};

func void Rtn_Start_302()
{
	TA_Guard_Passage(08, 00, 23, 00, "NW_CITY_GUARDOFFICE_GUARD_01");
	TA_Guard_Passage(23, 00, 08, 00, "NW_CITY_GUARDOFFICE_GUARD_01");
};
