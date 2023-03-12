instance BDT_1035_Fluechtling(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Fluechtling;
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0;

	voice							= 7;
	id								= 1035;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_B_Normal_Orik, BodyTex_B, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	// aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_SLD_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1035;
};

func void Rtn_Start_1035()
{
	TA_Smalltalk(08, 00, 23, 00, "NW_BIGFARM_HOUSE_OUT_05");
	TA_Smalltalk(23, 00, 08, 00, "NW_BIGFARM_HOUSE_OUT_05");
};
