instance BDT_10011_Addon_Bandit(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NPCTYPE_TAL_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 10011;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_L_NormalBart_Rufus, BodyTex_L, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10011;
};

func void Rtn_Start_10011()
{
	TA_Sit_Bench(22, 02, 06, 00, "ADW_SWAMP_SIT_BENCH_02");
	TA_Smalltalk(06, 00, 22, 02, "BL_FIGHT_03");
};
