instance KDW_14000_Addon_Saturas_ADW(Npc_Default)
{
	// -------- NPC --------
	name							= "Saturas";
	npctype							= NpcType_Main;
	guild							= GIL_KDW;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 14;
	id								= 14000;

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
	daily_routine = Rtn_PreStart_14000;
};

func void Rtn_PreStart_14000()
{
	TA_Study_WP(08, 25, 21, 35, "ADW_SATURAS_START");
	TA_Study_WP(21, 35, 08, 25, "ADW_SATURAS_START");
};

func void Rtn_Start_14000()
{
	TA_Study_WP(08, 25, 09, 35, "ADW_ENTRANCE_BUILDING2_01A");
	TA_Study_WP(09, 35, 10, 45, "ADW_ENTRANCE_BUILDING2_04");
	TA_Study_WP(10, 45, 11, 55, "ADW_ENTRANCE_PLATEAU_21");
	TA_Study_WP(11, 55, 12, 05, "ADW_ENTRANCE_BUILDING2_01A");

	TA_Study_WP(12, 05, 13, 15, "ADW_ENTRANCE_BUILDING2_04");
	TA_Study_WP(13, 15, 14, 25, "ADW_ENTRANCE_PLATEAU_21");
	TA_Study_WP(14, 25, 15, 35, "ADW_ENTRANCE_BUILDING2_01A");
	TA_Study_WP(15, 35, 16, 45, "ADW_ENTRANCE_BUILDING2_04");
	TA_Study_WP(16, 45, 17, 55, "ADW_ENTRANCE_PLATEAU_21");
	TA_Study_WP(17, 55, 18, 05, "ADW_ENTRANCE_BUILDING2_01A");

	TA_Sit_Bench(18, 05, 19, 15, "ADW_ENTRANCE_BUILDING2_02A");
	TA_Study_WP(19, 15, 20, 25, "ADW_ENTRANCE_BUILDING2_04");
	TA_Sit_Bench(20, 25, 21, 35, "ADW_ENTRANCE_BUILDING2_02A");
	TA_Study_WP(21, 35, 22, 45, "ADW_ENTRANCE_BUILDING2_04");
	TA_Sit_Bench(22, 45, 01, 15, "ADW_ENTRANCE_BUILDING2_02A");
	TA_Study_WP(01, 15, 03, 25, "ADW_ENTRANCE_BUILDING2_04");
	TA_Sit_Bench(03, 25, 05, 35, "ADW_ENTRANCE_BUILDING2_02A");
	TA_Study_WP(05, 35, 07, 45, "ADW_ENTRANCE_BUILDING2_04");
	TA_Sit_Bench(07, 45, 08, 25, "ADW_ENTRANCE_BUILDING2_02A");
};
