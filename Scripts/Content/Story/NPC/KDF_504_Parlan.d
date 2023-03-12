instance KDF_504_Parlan(Npc_Default)
{
	// -------- NPC --------
	name							= "Parlan";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	flags							= NPC_FLAG_IMMORTAL; // Joly: IMMORTAL wegen Petzmaster

	voice							= 5;
	id								= 504;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Corristo, BodyTex_N, ITAR_KDF_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_504;
};

func void Rtn_Start_504()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_MONASTERY_PLACE_03");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_MONASTERY_PLACE_03");
};
