instance BDT_10009_Addon_Bandit(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NPCTYPE_BL_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 13;
	id								= 10009;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_Weak_Cutter, BodyTex_P, ITAR_Prisoner);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Nagelknueppel);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10009;
};

func void Rtn_Start_10009()
{
	TA_Smalltalk(08, 00, 10, 00, "BL_UP_RING_04");
	TA_Smalltalk(10, 00, 08, 00, "BL_UP_RING_04");
};
