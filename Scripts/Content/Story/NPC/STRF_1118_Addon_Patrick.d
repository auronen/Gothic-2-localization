instance STRF_1118_Addon_Patrick(Npc_Default)
{
	// -------- NPC --------
	name							= "Patrick";
	npctype							= NpcType_Main;
	guild							= GIL_STRF;
	flags							= 0;

	voice							= 7;
	id								= 1118;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_NormalBart02, BodyTex_L, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_NoFightParker]		= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;
	aivar[AIV_NewsOverride]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Axe_L_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1118;
};

func void Rtn_Start_1118()
{
	TA_Pick_Ore(08, 00, 23, 00, "ADW_MINE_LAGER_05");
	TA_Pick_Ore(23, 00, 08, 00, "ADW_MINE_LAGER_05");
};

func void Rtn_Flucht_1118()
{
	TA_RunToWP(08, 00, 23, 00, "ADW_BL_HOEHLE_04");
	TA_RunToWP(23, 00, 08, 00, "ADW_BL_HOEHLE_04");
};
