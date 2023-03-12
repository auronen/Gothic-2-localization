instance PIR_1362_Addon_Bones(Npc_Default)
{
	// -------- NPC --------
	name							= "Bones";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 1;
	id								= 1362;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_NormalBart10, BodyTex_N, ITAR_PIR_M_Addon);
	Mdl_SetModelFatness(self, 1.3);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Addon_PIR2hAxe);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1362;
};

func void Rtn_PreStart_1362()
{
	TA_Practice_Sword(08, 00, 20, 00, "ADW_PIRATECAMP_TRAIN_01");
	TA_Practice_Sword(20, 00, 08, 00, "ADW_PIRATECAMP_TRAIN_01");
};

func void Rtn_Start_1362()
{
	TA_Practice_Sword(06, 55, 19, 55, "ADW_PIRATECAMP_TRAIN_01");
	TA_Stand_Drinking(19, 55, 20, 55, "WP_PIR_04");
	TA_Sit_Campfire(20, 55, 00, 55, "WP_PIR_04");
	TA_Stand_Drinking(00, 55, 01, 55, "WP_PIR_04");
	TA_Sit_Campfire(01, 55, 06, 55, "WP_PIR_04");
};
