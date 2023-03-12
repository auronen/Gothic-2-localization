instance NOV_609_Novize(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Novize;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_NOV;
	flags							= 0;

	voice							= 8;
	id								= 609;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal06, BodyTex_N, ITAR_NOV_L);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Nov_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_609;
};

func void Rtn_Start_609()
{
	TA_Pray_Innos_FP(08, 00, 23, 00, "NW_MONASTERY_CHURCH_03");
	TA_Sleep(23, 00, 08, 00, "NW_MONASTERY_NOVICE02_06");
};

func void Rtn_Fegen_609()
{
	TA_Stand_Sweeping(08, 00, 23, 00, "NW_MONASTERY_NOVICE02_02");
	TA_Stand_Sweeping(23, 00, 08, 00, "NW_MONASTERY_NOVICE02_02");
};
