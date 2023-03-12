instance PIR_1389_Addon_Tom(Npc_Default)
{
	// -------- NPC --------
	name							= "Tom";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= 0;

	voice							= 11;
	id								= 1389;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FIGHTER", Face_N_Normal19, BodyTex_N, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness(self, 0.75);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_ElBastardo);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1389;
};

func void Rtn_Start_1389()
{
	TA_Stand_WP(09, 00, 21, 00, "ADW_PIRATECAMP_BEACH_15");
	TA_Stand_WP(21, 00, 09, 00, "ADW_PIRATECAMP_BEACH_15");
};
