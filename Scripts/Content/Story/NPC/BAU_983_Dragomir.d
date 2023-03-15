instance BAU_983_Dragomir(Npc_Default)
{
	// -------- NPC --------
	name							= "Dragomir";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0;

	voice							= 12;
	id								= 983;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Tough_Lee_aehnlich, BodyTex_N, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_SLD_Sword);
	EquipItem(self, itRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_983;
};

func void Rtn_Start_983()
{
	TA_Sit_Bench(08, 00, 23, 00, "NW_TAVERNE_TROLLAREA_MONSTER_02_01");
	TA_Sit_Bench(23, 00, 08, 00, "NW_TAVERNE_TROLLAREA_MONSTER_02_01");
};
