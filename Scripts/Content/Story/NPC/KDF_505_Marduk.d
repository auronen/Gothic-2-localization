instance KDF_505_Marduk(Npc_Default)
{
	// -------- NPC --------
	name							= "Marduk";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	flags							= 0;

	voice							= 5;
	id								= 505;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_OldMan_Gravo, BodyTex_P, ITAR_KDF_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_505;
};

func void Rtn_Start_505()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_MONASTERY_CORRIDOR_03");
	TA_Sleep(23, 00, 08, 00, "NW_MONASTERY_MAGE01_BED_01");
};
