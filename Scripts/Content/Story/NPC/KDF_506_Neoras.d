instance KDF_506_Neoras(Npc_Default)
{
	// -------- NPC --------
	name							= "Neoras";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	flags							= 0;

	voice							= 1;
	id								= 506;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_NormalBart_Cronos, BodyTex_P, ITAR_KDF_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_506;
};

func void Rtn_Start_506()
{
	TA_Potion_Alchemy(08, 00, 23, 00, "NW_MONASTERY_ALCHEMY_01");
	TA_Potion_Alchemy(23, 00, 08, 00, "NW_MONASTERY_ALCHEMY_01");
};
