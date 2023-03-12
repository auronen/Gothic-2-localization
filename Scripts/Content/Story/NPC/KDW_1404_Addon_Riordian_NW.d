instance KDW_1404_Addon_Riordian_NW(Npc_Default)
{
	// -------- NPC --------
	name							= "Riordian";
	npctype							= NpcType_Main;
	guild							= GIL_KDW;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 10;
	id								= 1404;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_NormalBart_Riordian, BodyTex_P, ITAR_KDW_H);
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
	daily_routine = Rtn_Start_1404;
};

func void Rtn_Start_1404()
{
	TA_Stand_Guarding(08, 00, 20, 00, "NW_TROLLAREA_PORTALTEMPEL_34");
	TA_Stand_Guarding(20, 00, 08, 00, "NW_TROLLAREA_PORTALTEMPEL_34");
};

func void Rtn_Saturas_1404()
{
	TA_Study_WP(08, 00, 20, 00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_04");
	TA_Study_WP(20, 00, 08, 00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_04");
};

func void Rtn_Ringritual_1404()
{
	TA_Circle(08, 00, 20, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_05");
	TA_Circle(20, 00, 08, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_05");
};

func void Rtn_PreRingritual_1404()
{
	TA_Study_WP(08, 00, 20, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_05");
	TA_Study_WP(20, 00, 08, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_05");
};

func void Rtn_OpenPortal_1404()
{
	TA_Study_WP(08, 00, 20, 00, "NW_TROLLAREA_PORTAL_KDWWAIT_05");
	TA_Study_WP(20, 00, 08, 00, "NW_TROLLAREA_PORTAL_KDWWAIT_05");
};

func void Rtn_TOT_1404()
{
	TA_Sleep(08, 00, 20, 00, "TOT");
	TA_Sleep(20, 00, 08, 00, "TOT");
};
