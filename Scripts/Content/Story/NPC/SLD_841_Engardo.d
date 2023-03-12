instance SLD_841_Engardo(Npc_Default)
{
	// -------- NPC --------
	name							= "Engardo";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 13;
	id								= 841;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Normal_Erpresser, BodyTex_N, ITAR_SLD_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 25);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_841;
};

func void Rtn_PreStart_841()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_FARM2_PATH_02");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_FARM2_PATH_02");
};

func void Rtn_Start_841()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_FARM2_TO_TAVERN_08");
	TA_Smalltalk(22, 00, 08, 00, "NW_FARM2_TO_TAVERN_08");
};

func void Rtn_Bigfarm_841()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_BIGFARM_HOUSE_OUT_05");
	TA_Sit_Chair(22, 00, 08, 00, "NW_BIGFARM_HOUSE_12");
};
