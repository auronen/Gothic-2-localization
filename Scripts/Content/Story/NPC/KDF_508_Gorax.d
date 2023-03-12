instance KDF_508_Gorax(Npc_Default)
{
	// -------- NPC --------
	name							= "Gorax";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	flags							= 0;

	voice							= 14;
	id								= 508;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_OldBald_Jeremiah, BodyTex_N, ITAR_KDF_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- daily routine --------
	daily_routine = Rtn_Start_508;
};

func void Rtn_Start_508()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_MONASTERY_WINEMAKER_01");
	TA_Sleep(23, 00, 08, 00, "NW_MONASTERY_MAGE02_BED_01");
};
