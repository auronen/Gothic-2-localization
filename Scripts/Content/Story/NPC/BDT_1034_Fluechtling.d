instance BDT_1034_Fluechtling(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Fluechtling;
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0;

	voice							= 6;
	id								= 1034;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_N_Weak05, BodyTex_N, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

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
	daily_routine = Rtn_Start_1034;
};

func void Rtn_Start_1034()
{
	TA_Stand_Eating(08, 00, 23, 00, "NW_TAVERNE_IN_06");
	TA_Stand_Eating(23, 00, 08, 00, "NW_TAVERNE_IN_06");
};
