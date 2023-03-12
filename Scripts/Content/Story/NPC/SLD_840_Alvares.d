instance SLD_840_Alvares(Npc_Default)
{
	// -------- NPC --------
	name							= "Alvares";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 11;
	id								= 840;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_B_Tough_Silas, BodyTex_B, ITAR_SLD_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 25);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_840;
};

func void Rtn_PreStart_840()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_FARM2_PATH_02");
	TA_Smalltalk(22, 00, 08, 00, "NW_FARM2_PATH_02");
};

func void Rtn_Start_840()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_FARM2_TO_TAVERN_08");
	TA_Smalltalk(22, 00, 08, 00, "NW_FARM2_TO_TAVERN_08");
};

func void Rtn_Bigfarm_840()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_BIGFARM_HOUSE_OUT_05");
	TA_Sit_Chair(22, 00, 08, 00, "NW_BIGFARM_HOUSE_12");
};
