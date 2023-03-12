instance STRF_1120_Addon_Tonak(Npc_Default)
{
	// -------- NPC --------
	name							= "Tonak";
	npctype							= NpcType_Main;
	guild							= GIL_STRF;
	flags							= 0;

	voice							= 3;
	id								= 1120;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_B_Normal01, BodyTex_B, ITAR_Prisoner);
	Mdl_SetModelFatness(self, - 1);
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
	daily_routine = Rtn_Start_1120;
};

func void Rtn_Start_1120()
{
	TA_Pick_Ore(08, 00, 23, 00, "ADW_MINE_LAGER_SIDE_PICK_01");
	TA_Pick_Ore(23, 00, 08, 00, "ADW_MINE_LAGER_SIDE_PICK_01");
};

func void Rtn_Flucht_1120()
{
	TA_RunToWP(08, 00, 23, 00, "ADW_BL_HOEHLE_03");
	TA_RunToWP(23, 00, 08, 00, "ADW_BL_HOEHLE_03");
};
