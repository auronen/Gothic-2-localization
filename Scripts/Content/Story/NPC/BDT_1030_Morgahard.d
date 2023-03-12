instance BDT_1030_Morgahard(Npc_Default)
{
	// -------- NPC --------
	name							= "Morgahard";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0;

	voice							= 7;
	id								= 1030;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Bartholo, BodyTex_N, ITAR_BDT_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

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
	CreateInvItems(self, ItWr_RichterKomproBrief_MIS, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_SLD_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1030;
};

func void Rtn_Start_1030()
{
	TA_Smalltalk(08, 00, 23, 00, "NW_BIGFARM_HOUSE_OUT_05");
	TA_Smalltalk(23, 00, 08, 00, "NW_BIGFARM_HOUSE_OUT_05");
};
