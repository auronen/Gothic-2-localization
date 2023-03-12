instance PIR_1360_Addon_PIRAT(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Addon_PIRAT;
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 7;
	id								= 1360;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_L_Ratford, BodyTex_L, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1360;
};

func void Rtn_PreStart_1360()
{
	TA_Repair_Hut(08, 00, 20, 00, "ADW_PIRATECAMP_ENTRANCE_REPAIR");
	TA_Repair_Hut(20, 00, 08, 00, "ADW_PIRATECAMP_ENTRANCE_REPAIR");
};

func void Rtn_Start_1360()
{
	TA_Repair_Hut(06, 10, 19, 10, "ADW_PIRATECAMP_ENTRANCE_REPAIR");
	TA_Sit_Campfire(19, 10, 20, 10, "WP_PIR_06");
	TA_Stand_Drinking(20, 10, 21, 10, "WP_PIR_06");
	TA_Sit_Campfire(21, 10, 03, 10, "WP_PIR_06");
	TA_Pee(03, 10, 03, 15, "WP_PIR_06");
	TA_Sit_Campfire(03, 15, 06, 10, "WP_PIR_06");
};

func void Rtn_Follow_1360()
{
	TA_Follow_Player(08, 00, 20, 00, "ADW_PIRATECAMP_ENTRANCE_REPAIR");
	TA_Follow_Player(20, 00, 08, 00, "ADW_PIRATECAMP_ENTRANCE_REPAIR");
};
