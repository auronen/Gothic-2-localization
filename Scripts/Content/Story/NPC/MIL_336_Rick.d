instance Mil_336_Rick(Npc_Default)
{
	// -------- NPC --------
	name							= "Rick";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 10;
	id								= 336;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fatbald", Face_N_Ricelord, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 0);
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
	daily_routine = Rtn_Start_336;
};

func void Rtn_Start_336()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_FARM3_PATH_02");
	TA_Smalltalk(22, 00, 08, 00, "NW_FARM3_PATH_02");
};

func void Rtn_MilComing_336()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_FARM3_HOUSE");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_FARM3_HOUSE");
};

func void Rtn_Flucht2_336()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_RUMBOLD_FLUCHT2");
	TA_Smalltalk(22, 00, 08, 00, "NW_RUMBOLD_FLUCHT2");
};

func void Rtn_Flucht3_336()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_RUMBOLD_FLUCHT3");
	TA_Smalltalk(22, 00, 08, 00, "NW_RUMBOLD_FLUCHT3");
};
