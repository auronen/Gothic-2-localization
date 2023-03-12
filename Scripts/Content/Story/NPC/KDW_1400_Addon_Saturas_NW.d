instance KDW_1400_Addon_Saturas_NW(Npc_Default)
{
	// -------- NPC --------
	name							= "Saturas";
	npctype							= NpcType_Main;
	guild							= GIL_KDW;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 14;
	id								= 1400;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Saturas, BodyTex_B, ITAR_KDW_H);
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
	daily_routine = Rtn_Start_1400;
};

func void Rtn_Start_1400()
{
	TA_Study_WP(08, 00, 20, 00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_01");
	TA_Study_WP(20, 00, 08, 00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_01");
};

func void Rtn_Ringritual_1400()
{
	TA_Circle(08, 00, 20, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_01");
	TA_Circle(20, 00, 08, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_01");
};

func void Rtn_PreRingritual_1400()
{
	TA_Study_WP(08, 00, 20, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_01");
	TA_Study_WP(20, 00, 08, 00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_01");
};

func void Rtn_OpenPortal_1400()
{
	TA_Study_WP(08, 00, 20, 00, "NW_TROLLAREA_PORTAL_KDWWAIT_01");
	TA_Study_WP(20, 00, 08, 00, "NW_TROLLAREA_PORTAL_KDWWAIT_01");
};

func void Rtn_TOT_1400()
{
	TA_Sleep(08, 00, 20, 00, "TOT");
	TA_Sleep(20, 00, 08, 00, "TOT");
};
