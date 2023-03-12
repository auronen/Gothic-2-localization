instance STRF_1124_Addon_Monty_NW(Npc_Default)
{
	// -------- NPC --------
	name							= "Monty";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 8;
	id								= 1124;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_NormalBart04, BodyTex_N, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_IgnoresArmor]			= TRUE;
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
	EquipItem(self, ItMw_2H_Axe_L_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1124;
};

func void Rtn_Start_1124()
{
	TA_Read_Bookstand(00, 00, 12, 00, "NW_CITY_HABOUR_WERFT_IN_01");
	TA_Read_Bookstand(12, 00, 00, 00, "NW_CITY_HABOUR_WERFT_IN_01");
};
