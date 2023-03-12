instance KDW_14050_Addon_Merdarion_ADW(Npc_Default)
{
	// -------- NPC --------
	name							= "Merdarion";
	npctype							= NpcType_Main;
	guild							= GIL_KDW;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 6;
	id								= 14050;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_P_NormalBart_Nefarius, BodyTex_P, ITAR_KDW_H);
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
	daily_routine = Rtn_Start_14050;
};

func void Rtn_Start_14050()
{
	TA_Study_WP(06, 05, 07, 15, "ADW_ENTRANCE_01");
	TA_Study_WP(07, 15, 08, 25, "ADW_ENTRANCE_02");
	TA_Study_WP(08, 25, 09, 35, "ADW_ENTRANCE_01");
	TA_Study_WP(09, 35, 10, 45, "ADW_ENTRANCE_02");
	TA_Study_WP(10, 45, 11, 55, "ADW_ENTRANCE_01");
	TA_Study_WP(11, 55, 12, 05, "ADW_ENTRANCE_02");

	TA_Study_WP(12, 05, 13, 15, "ADW_ENTRANCE_01");
	TA_Study_WP(13, 15, 14, 25, "ADW_ENTRANCE_02");
	TA_Study_WP(14, 25, 15, 35, "ADW_ENTRANCE_01");
	TA_Study_WP(15, 35, 16, 45, "ADW_ENTRANCE_02");
	TA_Study_WP(16, 45, 17, 55, "ADW_ENTRANCE_01");
	TA_Study_WP(17, 55, 18, 05, "ADW_ENTRANCE_02");

	TA_Study_WP(18, 05, 19, 15, "ADW_ENTRANCE_01");
	TA_Study_WP(19, 15, 20, 25, "ADW_ENTRANCE_02");
	TA_Study_WP(20, 25, 21, 35, "ADW_ENTRANCE_01");
	TA_Study_WP(21, 35, 22, 45, "ADW_ENTRANCE_02");

	TA_Sleep(22, 45, 06, 05, "ADW_ENTRANCE_BUILDING2_05");
};
