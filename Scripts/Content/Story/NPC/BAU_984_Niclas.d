instance BAU_984_Niclas(Npc_Default)
{
	// -------- NPC --------
	name							= "Niclas";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0;

	voice							= 03;
	id								= 984;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_NormalBart12, BodyTex_N, ITAR_Leather_L);
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
	EquipItem(self, itRw_SLD_BOW);

	// -------- daily routine --------
	daily_routine = Rtn_Start_984;
};

func void Rtn_Start_984()
{
	TA_Sit_Bench(08, 00, 23, 00, "NW_CITY_JAEGER_SIT");
	TA_Sit_Bench(23, 00, 08, 00, "NW_CITY_JAEGER_SIT");
};
