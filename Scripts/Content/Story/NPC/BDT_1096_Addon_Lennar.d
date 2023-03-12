instance BDT_1096_Addon_Lennar(Npc_Default)
{
	// -------- NPC --------
	name							= "Lennar";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 1096;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal20, BodyTex_N, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Nagelknueppel);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1096;
};

func void Rtn_Start_1096()
{
	TA_Stand_Drinking(01, 50, 19, 30, "BL_DOWN_RING_03");
	TA_Roast_Scavenger(19, 30, 01, 50, "BL_DOWN_RING_ROAST");
};

func void Rtn_Ruhe_1096()
{
	TA_Stand_Drinking(10, 00, 20, 00, "ADW_MINE_22");
	TA_Stand_Drinking(20, 00, 10, 00, "ADW_MINE_22");
};

func void Rtn_Mine_1096()
{
	TA_Pick_Ore(10, 00, 20, 00, "ADW_MINE_PICK_09");
	TA_Pick_Ore(20, 00, 10, 00, "ADW_MINE_PICK_09");
};
