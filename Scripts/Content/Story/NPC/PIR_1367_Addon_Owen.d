instance PIR_1367_Addon_Owen(Npc_Default)
{
	// -------- NPC --------
	name							= "Owen";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 13;
	id								= 1367;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal16, BodyTex_N, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness(self, 1.1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Addon_PIR1hAxe);

	// -------- daily routine --------
	daily_routine = Rtn_PostStart_1367;
};

func void Rtn_PreStart_1367()
{
	TA_Saw(06, 00, 10, 00, "ADW_PIRATECAMP_WAY_15");
	TA_Sit_Campfire(10, 00, 14, 00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Saw(14, 00, 18, 00, "ADW_PIRATECAMP_WAY_15");
	TA_Sit_Campfire(18, 00, 22, 00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Sit_Campfire(22, 00, 02, 00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Sit_Campfire(02, 00, 06, 00, "ADW_PIRATECAMP_LUMBER_SIT");
};

func void Rtn_Start_1367()
{
	TA_Sit_Campfire(07, 00, 22, 00, "ADW_PIRATECAMP_LUMBERCAMP_04");
	TA_Sit_Campfire(22, 00, 07, 00, "ADW_PIRATECAMP_LUMBERCAMP_04");
};

func void Rtn_PostStart_1367()
{
	TA_Stand_Drinking(07, 00, 22, 00, "ADW_PIRATECAMP_BEACH_19");
	TA_Stand_Drinking(22, 00, 07, 00, "ADW_PIRATECAMP_BEACH_25");
};
