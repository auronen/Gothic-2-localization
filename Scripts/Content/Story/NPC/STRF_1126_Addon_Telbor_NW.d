instance STRF_1126_Addon_Telbor_NW(Npc_Default)
{
	// -------- NPC --------
	name							= "Telbor";
	npctype							= NpcType_Main;
	guild							= GIL_BAU;
	flags							= 0;

	voice							= 12;
	id								= 1126;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fatbald", Face_B_Normal01, BodyTex_B, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_IgnoresArmor]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Axe_L_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1126;
};

func void Rtn_Start_1126()
{
	TA_Rake_FP(00, 00, 12, 00, "NW_FARM2_FIELD_TELBOR");
	TA_Rake_FP(12, 00, 00, 00, "NW_FARM2_FIELD_TELBOR");
};
