instance BAU_981_Grom(Npc_Default)
{
	// -------- NPC --------
	name							= "Grom";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0;

	voice							= 08;
	id								= 981;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_P_Gilbert, BodyTex_P, ITAR_BAU_L);
	Mdl_SetModelFatness(self, 2);
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

	// -------- daily routine --------
	daily_routine = Rtn_Start_981;
};

func void Rtn_Start_981()
{
	TA_Saw(08, 00, 23, 00, "NW_CASTLEMINE_TROLL_04_C");
	TA_Sleep(23, 00, 08, 00, "NW_CASTLEMINE_TROLL_04");
};
