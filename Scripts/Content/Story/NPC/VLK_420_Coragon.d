instance VLK_420_Coragon(Npc_Default)
{
	// -------- NPC --------
	name							= "Coragon";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 9;
	id								= 420;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald.", Face_N_Normal_Blade, BodyTex_N, ITAR_SMITH);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_420;
};

func void Rtn_Start_420()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_CITY_TAVERN_IN_03");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_CITY_TAVERN_IN_03");
};
