instance Vlk_424_Alwin(Npc_Default) // Metzger
{
	// -------- NPC --------
	name							= "Alwin";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 12;
	id								= 424;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_NormalBart_Riordian, BodyTex_P, ITAR_Barkeeper);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_424;
};

func void Rtn_Start_424()
{
	TA_Sit_Bench(08, 00, 22, 00, "NW_CITY_PATH_HABOUR_18");
	TA_Sleep(22, 00, 08, 00, "NW_CITY_HABOUR_HUT_07_BED_01");
};
