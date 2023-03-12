instance BDT_1095_Addon_Crimson(Npc_Default)
{
	// -------- NPC --------
	name							= "Crimson";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 10;
	id								= 1095;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_NormalBart10, BodyTex_N, ITAR_SMITH);
	Mdl_SetModelFatness(self, -2);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 75);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Sense);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1095;
};

func void Rtn_Start_1095()
{
	TA_Smith_Fire(11, 00, 14, 00, "ADW_MINE_HOEHLE_03");
	TA_Smith_Fire(14, 00, 11, 00, "ADW_MINE_HOEHLE_03");
};
