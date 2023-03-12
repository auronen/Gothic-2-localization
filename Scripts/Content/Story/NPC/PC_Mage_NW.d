// #############################################
// ##
// ## Neue Welt
// ##
// ############################################

instance PC_Mage_NW(Npc_Default)
{
	// -------- NPC --------
	name							= "Milten";
	npctype							= NpcType_Friend;
	guild							= GIL_KDF;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 3;
	id								= 12;

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
	daily_routine = Rtn_Start_12;
};

func void Rtn_Start_12()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_MONASTERY_MILTEN");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_MONASTERY_MILTEN");
};

func void Rtn_WaitForShip_12()
{
	TA_Smalltalk(08, 00, 23, 00, "NW_CITY_WAY_TO_SHIP_19");
	TA_Smalltalk(23, 00, 08, 00, "NW_CITY_WAY_TO_SHIP_19");
};

func void Rtn_ShipOff_12()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_MONASTERY_ENTRY_01");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_MONASTERY_ENTRY_01");
};

func void Rtn_Ship_12()
{
	TA_Smalltalk(08, 00, 23, 00, "SHIP_CREW_19");
	TA_Smalltalk(23, 00, 08, 00, "SHIP_CREW_19");
};
