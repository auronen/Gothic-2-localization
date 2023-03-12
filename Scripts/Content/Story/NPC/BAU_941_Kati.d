instance BAU_941_Kati(Npc_Default)
{
	// -------- NPC --------
	name							= "Kati";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= NPC_FLAG_IMMORTAL; // Joly:nur solange Alnveres da ist!

	voice							= 16;
	id								= 941;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_Lilo, BodyTexBabe_N, ITAR_BauBabe_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 15);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_941;
};

func void Rtn_PreStart_941()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_FARM2_PATH_01");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_FARM2_PATH_01");
};

func void Rtn_Start_941()
{
	TA_Cook_Stove(05, 00, 10, 00, "NW_FARM2_HOUSE_IN_04");
	TA_Sit_Bench(10, 00, 12, 00, "NW_FARM2_BENCH_02");
	TA_Cook_Stove(12, 00, 20, 55, "NW_FARM2_HOUSE_IN_04");
	TA_Roast_Scavenger(20, 55, 23, 59, "NW_FARM2_BBQ");
	TA_Sleep(23, 59, 05, 00, "NW_FARM2_HOUSE_IN_02");
};
