instance VLK_432_Moe(Npc_Default)
{
	// -------- NPC --------
	name							= "Moe";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 1;
	id								= 432;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Scar, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_432;
};

func void Rtn_Start_432()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_CITY_PATH_HABOUR_02_02");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_CITY_PATH_HABOUR_02_02");
};
