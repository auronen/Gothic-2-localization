instance PIR_1370_Addon_Angus(Npc_Default)
{
	// -------- NPC --------
	name							= "Angus";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 6;
	id								= 1370;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart21, BodyTex_N, ITAR_PIR_M_Addon);
	Mdl_SetModelFatness(self, 1.3);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	CreateInvItems(self, ItRi_Addon_MorgansRing_Mission, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Addon_PIR2hAxe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1370;
};

func void Rtn_Start_1370()
{
	TA_Smalltalk(05, 00, 20, 00, "ADW_PIRATECAMP_WATERHOLE_CAVE");
	TA_Smalltalk(20, 00, 05, 00, "ADW_PIRATECAMP_WATERHOLE_CAVE");
};
