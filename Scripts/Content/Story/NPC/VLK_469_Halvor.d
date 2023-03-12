instance VLK_469_Halvor(Npc_Default)
{
	// -------- NPC --------
	name							= "Halvor";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 6;
	id								= 469;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart11, BodyTex_N, ITAR_Vlk_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Mace_L_03);

	// -------- daily routine --------
	daily_routine = Rtn_Start_469;
};

func void Rtn_Start_469()
{
	TA_Stand_ArmsCrossed(05, 00, 20, 00, "NW_CITY_HABOUR_POOR_AREA_PATH_01");
	TA_Stand_Drinking(20, 00, 01, 00, "NW_CITY_HABOUR_PUFF_IN_07");
	TA_Sleep(01, 00, 05, 00, "NW_CITY_BED_HALVOR");
};

func void Rtn_Prison_469()
{
	TA_Sit_Campfire(08, 00, 22, 00, "NW_CITY_HABOUR_KASERN_HALVOR");
	TA_Sit_Campfire(22, 00, 08, 00, "NW_CITY_HABOUR_KASERN_HALVOR");
};
