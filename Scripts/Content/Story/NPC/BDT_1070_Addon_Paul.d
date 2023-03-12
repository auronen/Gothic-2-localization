instance BDT_1070_Addon_Paul(Npc_Default)
{
	// -------- NPC --------
	name							= "Paul";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 3;
	id								= 1070;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Drax, BodyTex_N, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 45);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItMi_Nugget, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1070;
};

func void Rtn_PreStart_1070()
{
	TA_Saw(06, 00, 13, 00, "BL_SMITH_YARD_SAW");
	TA_Saw(13, 00, 06, 00, "BL_SMITH_YARD_SAW");
};

func void Rtn_Away_1070()
{
	TA_Stand_Drinking(10, 00, 20, 00, "BL_SMITH_STAIRS");
	TA_Stand_Drinking(20, 00, 10, 00, "BL_SMITH_STAIRS");
};

func void Rtn_Start_1070()
{
	TA_Saw(06, 00, 13, 00, "BL_SMITH_YARD_SAW");
	TA_Smith_Anvil(13, 00, 17, 00, "BL_UP_02");
	TA_Saw(17, 00, 19, 00, "BL_SMITH_YARD_SAW");
	TA_Smith_Sharp(19, 00, 23, 00, "BL_SMITH_YARD_02");
	TA_Stand_Drinking(23, 00, 06, 00, "BL_UP_10");
};

func void Rtn_Mine_1070()
{
	TA_Pick_Ore(10, 00, 20, 00, "ADW_MINE_PICK_07");
	TA_Pick_Ore(20, 00, 10, 00, "ADW_MINE_PICK_07");
};
