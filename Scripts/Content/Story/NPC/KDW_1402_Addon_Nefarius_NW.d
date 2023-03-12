instance KDW_1402_Addon_Nefarius_NW(Npc_Default)
{
	// -------- NPC --------
	name							= "Nefarius";
	npctype							= NpcType_Main;
	guild							= GIL_KDW;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 5;
	id								= 1402;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_P_NormalBart_Nefarius, BodyTex_P, ITAR_KDW_H);
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
	daily_routine = Rtn_Start_1402;
};

func void Rtn_Start_1402()
{
	TA_Study_WP(08, 00, 20, 00, "NW_TROLLAREA_PORTAL_09");
	TA_Study_WP(20, 00, 08, 00, "NW_TROLLAREA_PORTAL_09");
};

func void Rtn_Ringritual_1402()
{
	TA_Circle(08, 00, 20, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_02");
	TA_Circle(20, 00, 08, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_02");
};

func void Rtn_PreRingritual_1402()
{
	TA_Stand_WP(08, 00, 20, 00, "NW_TROLLAREA_PORTALTEMPEL_42");
	TA_Stand_WP(20, 00, 08, 00, "NW_TROLLAREA_PORTALTEMPEL_42");
};

func void Rtn_OpenPortal_1402()
{
	TA_Study_WP(08, 00, 20, 00, "NW_TROLLAREA_PORTAL_KDWWAIT_03");
	TA_Study_WP(20, 00, 08, 00, "NW_TROLLAREA_PORTAL_KDWWAIT_03");
};

func void Rtn_TOT_1402()
{
	TA_Sleep(08, 00, 20, 00, "TOT");
	TA_Sleep(20, 00, 08, 00, "TOT");
};
