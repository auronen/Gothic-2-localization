instance BDT_10015_Addon_Emilio(Npc_Default)
{
	// -------- NPC --------
	name							= "Emilio";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 10;
	id								= 10015;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_P_NormalBart01, BodyTex_P, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Axe_L_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10015;
};

func void Rtn_Start_10015()
{
	TA_Sit_Bench(02, 00, 11, 00, "BL_INN_01_BENCH");
	TA_Sit_Bench(11, 00, 02, 00, "BL_INN_01_BENCH");
};

func void Rtn_Mine_10015()
{
	TA_Pick_Ore(10, 00, 20, 00, "ADW_MINE_09_PICK");
	TA_Pick_Ore(20, 00, 10, 00, "ADW_MINE_09_PICK");
};
