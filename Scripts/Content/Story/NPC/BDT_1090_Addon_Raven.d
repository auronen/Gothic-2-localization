instance BDT_1090_Addon_Raven(Npc_Default)
{
	// -------- NPC --------
	name							= "Raven";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	level							= 50;
	flags							= 0;

	voice							= 10;
	id								= 1090;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 50; // +50 Waffe
	attribute[ATR_DEXTERITY]		= 50;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;
	attribute[ATR_HITPOINTS_MAX]	= 500;
	attribute[ATR_HITPOINTS]		= 500;
	attribute[ATR_MANA_MAX]			= 666666; // Joly:für die Waffe

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Raven, BodyTex_N, ITAR_Raven_Addon);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- aivars --------
	// aivar[AIV_IgnoresFakeGuild]	= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 90);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItMi_Addon_Stone_01, 1);
	CreateInvItems(self, ItMi_Addon_Stone_02, 1);
	CreateInvItems(self, ItMi_Addon_Stone_03, 1);
	CreateInvItems(self, ItMi_Addon_Stone_04, 1);
	CreateInvItems(self, ItMi_Addon_Stone_05, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_BeliarWeapon_Raven);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1090;
};

func void Rtn_Start_1090()
{
	TA_Pray_Innos_FP(09, 00, 21, 00, "ADW_ADANOSTEMPEL_RAVEN_11");
	TA_Pray_Innos_FP(21, 00, 09, 00, "ADW_ADANOSTEMPEL_RAVEN_11");
};

func void Rtn_WaitforPlayer_1090()
{
	TA_Stand_WP(09, 00, 21, 00, "ADW_ADANOSTEMPEL_RAVEN_11");
	TA_Stand_WP(21, 00, 09, 00, "ADW_ADANOSTEMPEL_RAVEN_11");
};
