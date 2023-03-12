instance VLK_4304_Addon_William(Npc_Default)
{
	// -------- NPC --------
	name							= "William";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= FALSE;

	voice							= 6;
	id								= 4304;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Homer, BodyTex_N, ITAR_BAU_L);
	Mdl_SetModelFatness(self, 0.9);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	CreateInvItems(self, ITWr_Addon_William_01, 1); // Joly: nicht austauschen oder umbenennen.
	CreateInvItems(self, ITKe_Lockpick, 2);
	CreateInvItems(self, ITFo_Apple, 1);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4304;
};

func void Rtn_Start_4304()
{
	TA_Smalltalk(05, 00, 20, 00, "ADW_ENTRANCE_RUIN2_02");
	TA_Smalltalk(20, 00, 05, 00, "ADW_ENTRANCE_RUIN2_02");
};
