instance Mil_335_Rumbold(Npc_Default)
{
	// -------- NPC --------
	name							= "Rumbold";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 10;
	id								= 335;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Important_Arto, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_DropDeadAndKill]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_335;
};

func void Rtn_Start_335()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_FARM3_PATH_02");
	TA_Smalltalk(22, 00, 08, 00, "NW_FARM3_PATH_02");
};

func void Rtn_MilComing_335()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_FARM3_BENGAR");
	TA_Smalltalk(22, 00, 08, 00, "NW_FARM3_BENGAR");
};

func void Rtn_Flucht2_335()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_RUMBOLD_FLUCHT2");
	TA_Smalltalk(22, 00, 08, 00, "NW_RUMBOLD_FLUCHT2");
};

func void Rtn_Flucht3_335()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_RUMBOLD_FLUCHT3");
	TA_Smalltalk(22, 00, 08, 00, "NW_RUMBOLD_FLUCHT3");
};
