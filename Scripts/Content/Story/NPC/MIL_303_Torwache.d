instance Mil_303_Torwache(Npc_Default)
{
	// -------- NPC --------
	name							= "Tuerwache";
	npctype							= NpcType_Main;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 7;
	id								= 303;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal_Sly, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_303;
};

func void Rtn_Start_303()
{
	TA_Guard_Passage(08, 00, 23, 00, "NW_CITY_GUARDOFFICE_GUARD_02");
	TA_Guard_Passage(23, 00, 08, 00, "NW_CITY_GUARDOFFICE_GUARD_02");
};
