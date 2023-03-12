instance STRF_1119_Addon_Monty(Npc_Default)
{
	// -------- NPC --------
	name							= "Monty";
	npctype							= NpcType_Main;
	guild							= GIL_STRF;
	flags							= 0;

	voice							= 8;
	id								= 1119;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_NormalBart04, BodyTex_N, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_NoFightParker]		= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

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
	daily_routine = Rtn_Start_1119;
};

func void Rtn_Start_1119()
{
	TA_Pick_Ore(08, 00, 23, 00, "ADW_MINE_LAGER_06");
	TA_Pick_Ore(23, 00, 08, 00, "ADW_MINE_LAGER_06");
};

func void Rtn_Flucht_1119()
{
	TA_RunToWP(08, 00, 23, 00, "ADW_BL_HOEHLE_03");
	TA_RunToWP(23, 00, 08, 00, "ADW_BL_HOEHLE_03");
};
