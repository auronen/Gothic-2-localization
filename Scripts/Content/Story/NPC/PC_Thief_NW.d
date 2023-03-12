// #############################################
// ##
// ## Neue Welt
// ##
// ############################################
instance PC_Thief_NW(Npc_Default)
{
	// -------- NPC --------
	name							= "Diego";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 11;
	id								= 21;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_L_Diego, BodyTex_L, ITAR_VLK_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_SLD_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_21;
};

func void Rtn_Start_21()
{
	TA_Stand_WP(08, 00, 23, 00, "NW_CITY_MERCHANT_TRADE_02");
	TA_Stand_WP(23, 00, 08, 00, "NW_CITY_MERCHANT_TRADE_02");
};

func void Rtn_Gerbrandt_21()
{
	TA_Stand_WP(08, 00, 23, 00, "NW_CITY_UPTOWN_PATH_23");
	TA_Stand_WP(23, 00, 08, 00, "NW_CITY_UPTOWN_PATH_23");
};

func void Rtn_WAITFORSHIP_21()
{
	TA_Smalltalk(08, 00, 23, 00, "NW_WAITFOR_SHIP_05");
	TA_Smalltalk(23, 00, 08, 00, "NW_WAITFOR_SHIP_05");
};

func void Rtn_SHIP_21()
{
	TA_Smalltalk(08, 00, 23, 00, "SHIP_CREW_05");
	TA_Smalltalk(23, 00, 08, 00, "SHIP_CREW_05");
};
