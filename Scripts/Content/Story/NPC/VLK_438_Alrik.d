instance VLK_438_Alrik(Npc_Default)
{
	// -------- NPC --------
	name							= "Alrik";
	npctype							= NpcType_Friend; // plündert nicht!!! (und ein Freischlag)
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 9;
	id								= 438;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Bloodwyn, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_MM_FollowTime]		= 1000;
	aivar[AIV_FightDistCancel]		= 600;
	aivar[AIV_MaxDistToWp]			= 300;
	aivar[AIV_OriginalFightTactic]	= FAI_HUMAN_NORMAL;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 20);

	// -------- inventory --------
	// B_CreateAmbientInv (self); // NICHT, Alrik soll nicht mehr Gold haben!

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_438;
};

func void Rtn_Start_438() // NICHT ÄNDERN --> DIALOG!
{
	TA_Stand_Guarding(10, 55, 19, 15, "NW_CITY_PATH_HABOUR_16_01");
	TA_Stand_Drinking(19, 15, 03, 30, "NW_CITY_HABOUR_TAVERN01_01");
	TA_Sit_Bench(03, 30, 10, 55, "NW_CITY_PATH_HABOUR_16_01");
};
