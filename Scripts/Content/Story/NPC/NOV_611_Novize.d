instance NOV_611_Novize(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Novize;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_NOV;
	flags							= 0;

	voice							= 3;
	id								= 611;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Normal03, BodyTex_N, ITAR_NOV_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 15);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Nov_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_611;
};

func void Rtn_Start_611()
{
	TA_Pray_Innos_FP(08, 00, 09, 00, "NW_MONASTERY_CHURCH_03");
	TA_Smalltalk(09, 00, 23, 05, "NW_MONASTERY_GRASS_01");
	TA_Sleep(23, 05, 08, 00, "NW_MONASTERY_NOVICE02_04");
};

func void Rtn_Fegen_611()
{
	TA_Stand_Sweeping(08, 00, 23, 05, "NW_MONASTERY_NOVICE01_02");
	TA_Stand_Sweeping(23, 05, 08, 00, "NW_MONASTERY_NOVICE01_02");
};
