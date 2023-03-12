instance STRF_1121_Addon_Telbor(Npc_Default)
{
	// -------- NPC --------
	name							= "Telbor";
	npctype							= NpcType_Main;
	guild							= GIL_STRF;
	flags							= 0;

	voice							= 12;
	id								= 1121;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fatbald", Face_B_Normal01, BodyTex_B, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 2);
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
	daily_routine = Rtn_Start_1121;
};

func void Rtn_Start_1121()
{
	TA_Pick_Ore(08, 00, 23, 00, "ADW_MINE_LAGER_SIDE_PICK_02");
	TA_Pick_Ore(23, 00, 08, 00, "ADW_MINE_LAGER_SIDE_PICK_02");
};

func void Rtn_Flucht_1121()
{
	TA_RunToWP(08, 00, 23, 00, "ADW_BL_HOEHLE_03");
	TA_RunToWP(23, 00, 08, 00, "ADW_BL_HOEHLE_03");
};
