instance PIR_1356_Addon_Bill(Npc_Default)
{
	// -------- NPC --------
	name							= "Bill";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 3;
	id								= 1356;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Drax, BodyTex_N, ITAR_PIR_L_Addon);
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
	EquipItem(self, ItMw_Addon_PIR1hAxe);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1356;
};

func void Rtn_PreStart_1356()
{
	TA_Saw(08, 00, 20, 00, "ADW_PIRATECAMP_SAW_01");
	TA_Saw(20, 00, 08, 00, "ADW_PIRATECAMP_SAW_01");
};

func void Rtn_Start_1356()
{
	TA_Saw(08, 00, 20, 00, "ADW_PIRATECAMP_SAW_01");
	TA_Stand_Eating(20, 00, 21, 00, "WP_PIR_01");
	TA_Sit_Campfire(21, 00, 08, 00, "WP_PIR_01");
};

func void Rtn_GregIsBack_1356()
{
	TA_Sit_Campfire(08, 00, 20, 00, "WP_PIR_01");
	TA_Stand_Eating(20, 00, 21, 00, "WP_PIR_01");
	TA_Sit_Campfire(21, 00, 08, 00, "WP_PIR_01");
};
