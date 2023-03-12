instance Mil_317_Ruga(Npc_Default)
{
	// -------- NPC --------
	name							= "Ruga";
	npctype							= NpcType_Main;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 11;
	id								= 317;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_NormalBart03, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItKe_City_Tower_03, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_317;
};

func void Rtn_Start_317()
{
	TA_Stand_Drinking(07, 00, 20, 00, "KASERNE");
	TA_Sit_Chair(20, 00, 07, 00, "NW_CITY_HABOUR_KASERN_15_B");
	// TA_Sleep (22,00,08,00,"NW_CITY_BARRACK01_BED_RUGA");
};
