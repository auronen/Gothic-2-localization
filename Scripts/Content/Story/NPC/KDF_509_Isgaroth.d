instance KDF_509_Isgaroth(Npc_Default)
{
	// -------- NPC --------
	name							= "Isgaroth";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	flags							= 0;

	voice							= 1;
	id								= 509;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Tough_Okyl, BodyTex_N, ITAR_KDF_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 90);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_509;
};

func void Rtn_Start_509()
{
	TA_Pray_Innos_FP(06, 00, 21, 00, "NW_MONASTERY_SHRINE_04");
	TA_Sit_Bench(21, 00, 06, 00, "NW_MONASTERY_SHRINE_05");
};
