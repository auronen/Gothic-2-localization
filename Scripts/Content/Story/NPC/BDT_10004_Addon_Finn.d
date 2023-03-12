instance BDT_10004_Addon_Finn(Npc_Default)
{
	// -------- NPC --------
	name							= "Finn";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 7;
	id								= 10004;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart02, BodyTex_N, ITAR_Prisoner);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMW_2h_Axe_L_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10004;
};

func void Rtn_Start_10004()
{
	TA_Stand_Eating(10, 00, 20, 00, "BL_DOWN_RING_04");
	TA_Smalltalk(20, 00, 02, 00, "BL_DOWN_RING_02");
	TA_Sit_Bench(02, 00, 10, 00, "BL_DOWN_04_BENCH");
};

func void Rtn_Mine_10004()
{
	TA_Pick_Ore(10, 00, 20, 00, "ADW_MINE_PICK_06");
	TA_Pick_Ore(20, 00, 10, 00, "ADW_MINE_PICK_06");
};
