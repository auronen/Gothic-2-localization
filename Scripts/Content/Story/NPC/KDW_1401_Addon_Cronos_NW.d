instance KDW_1401_Addon_Cronos_NW(Npc_Default)
{
	// -------- NPC --------
	name							= "Cronos";
	npctype							= NpcType_Main;
	guild							= GIL_KDW;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 4;
	id								= 1401;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_P_NormalBart_Cronos, BodyTex_P, ITAR_KDW_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- aivars --------
	aivar[AIV_MagicUser]			= MAGIC_ALWAYS;
	aivar[AIV_IgnoresFakeGuild]		= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1401;
};

func void Rtn_PreStart_1401()
{
	TA_Smalltalk(08, 00, 20, 00, "PORTAL");
	TA_Smalltalk(20, 00, 08, 00, "PORTAL");
};

func void Rtn_Start_1401()
{
	TA_Study_WP(08, 00, 20, 00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_02");
	TA_Study_WP(20, 00, 08, 00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_02");
};

func void Rtn_Ringritual_1401()
{
	TA_Circle(08, 00, 20, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_03");
	TA_Circle(20, 00, 08, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_03");
};

func void Rtn_PreRingritual_1401()
{
	TA_Study_WP(08, 00, 20, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_03");
	TA_Study_WP(20, 00, 08, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_03");
};

func void Rtn_OpenPortal_1401()
{
	TA_Study_WP(08, 00, 20, 00, "NW_TROLLAREA_PORTAL_KDWWAIT_02");
	TA_Study_WP(20, 00, 08, 00, "NW_TROLLAREA_PORTAL_KDWWAIT_02");
};

func void Rtn_TOT_1401()
{
	TA_Sleep(08, 00, 20, 00, "TOT");
	TA_Sleep(20, 00, 08, 00, "TOT");
};
