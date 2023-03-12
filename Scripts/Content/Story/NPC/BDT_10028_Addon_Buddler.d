instance BDT_10028_Addon_Buddler(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Addon_Buddler;
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 12;
	id								= 10028;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_ToughBald, BodyTex_B, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10028;
};

func void Rtn_Start_10028()
{
	TA_Smalltalk(06, 00, 12, 00, "ADW_MINE_22");
	TA_Smalltalk(12, 00, 06, 00, "ADW_MINE_22");
};

func void Rtn_Work_10028()
{
	TA_Pick_Ore(08, 00, 23, 00, "ADW_MINE_PICK_03");
	TA_Pick_Ore(23, 00, 08, 00, "ADW_MINE_PICK_03");
};
