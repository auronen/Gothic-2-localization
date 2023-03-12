instance STRF_1122_Addon_Pardos(Npc_Default)
{
	// -------- NPC --------
	name							= "Pardos";
	npctype							= NpcType_Main;
	guild							= GIL_STRF;
	level							= 12;
	flags							= 0;

	voice							= 3;
	id								= 1122;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 40;
	attribute[ATR_DEXTERITY]		= 40;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;
	attribute[ATR_HITPOINTS_MAX]	= 120;
	attribute[ATR_HITPOINTS]		= 70; // für MISSION

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak_Asghan, BodyTex_N, ITAR_Prisoner);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_NoFightParker]		= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Axe_L_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1122;
};

func void Rtn_Start_1122()
{
	TA_Sit_Campfire(08, 00, 23, 00, "ADW_MINE_LAGER_SIDE_04");
	TA_Sit_Campfire(23, 00, 08, 00, "ADW_MINE_LAGER_SIDE_04");
};

func void Rtn_Flucht_1122()
{
	TA_RunToWP(08, 00, 23, 00, "ADW_BL_HOEHLE_03");
	TA_RunToWP(23, 00, 08, 00, "ADW_BL_HOEHLE_03");
};
