// #############################################
// ##
// ## Alte Welt
// ##
// ############################################

instance PC_Mage_OW(Npc_Default)
{
	// -------- NPC --------
	name							= "Milten";
	npctype							= NpcType_Friend;
	guild							= GIL_KDF;
	flags							= NPC_FLAG_IMMORTAL; // Joly: IMMORTAL

	voice							= 3;
	id								= 2;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Milten, BodyTex_N, ITAR_KDF_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_2;
};

func void Rtn_Start_2()
{
	TA_Potion_Alchemy(08, 00, 23, 00, "OC_MAGE_LAB_ALCHEMY");
	TA_Read_Bookstand(23, 00, 08, 00, "OC_MAGE_LIBRARY_BOOK_01");
};

func void Rtn_GornFree_2()
{
	TA_Smalltalk(08, 00, 23, 00, "OC_MAGE_LIBRARY_IN");
	TA_Smalltalk(23, 00, 08, 00, "OC_MAGE_LIBRARY_IN");
};

func void Rtn_Tot_2()
{
	TA_Sleep(08, 00, 23, 00, "TOT");
	TA_Sleep(23, 00, 08, 00, "TOT");
};
