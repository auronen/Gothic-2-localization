instance VLK_498_Ignaz(Npc_Default)
{
	// -------- NPC --------
	name							= "Ignaz";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 14;
	id								= 498;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_N_Corristo, BodyTex_N, ITAR_Smith);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_498;
};

func void Rtn_Start_498()
{
	TA_Potion_Alchemy(05, 00, 10, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_WORK");
	TA_Read_Bookstand(10, 00, 13, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_WORK");
	TA_Sit_Chair(13, 00, 14, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_WORK");
	TA_Potion_Alchemy(14, 00, 19, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_WORK");
	TA_Read_Bookstand(19, 00, 23, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_WORK");
	TA_Sit_Chair(23, 00, 00, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_WORK");
	TA_Sleep(00, 00, 05, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_08_IN_BED");
};
