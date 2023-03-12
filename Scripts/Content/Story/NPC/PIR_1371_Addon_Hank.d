instance PIR_1371_Addon_Hank(Npc_Default)
{
	// -------- NPC --------
	name							= "Hank";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 6;
	id								= 1371;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Lefty, BodyTex_N, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Addon_PIR1hSword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1370;
};

func void Rtn_Start_1371()
{
	TA_Smalltalk(05, 00, 20, 00, "ADW_PIRATECAMP_WATERHOLE_CAVE");
	TA_Smalltalk(20, 00, 05, 00, "ADW_PIRATECAMP_WATERHOLE_CAVE");
};
