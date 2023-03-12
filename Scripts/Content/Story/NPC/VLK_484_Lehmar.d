instance VLK_484_Lehmar(Npc_Default)
{
	// -------- NPC --------
	name							= "Lehmar";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 9;
	id								= 484;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Whistler, BodyTex_N, ITAR_Vlk_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItWr_Schuldenbuch, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_SLD_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_484;
};

func void Rtn_Start_484()
{
	TA_Sit_Throne(06, 30, 00, 30, "NW_CITY_HABOUR_HUT_08_IN_C");
	TA_Sleep(00, 30, 06, 30, "NW_CITY_HABOUR_HUT_08_BED_02");
};
