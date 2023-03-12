instance BAU_931_Till(Npc_Default)
{
	// -------- NPC --------
	name							= "Till";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 3;
	id								= 931;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_Weak_Cutter, BodyTex_P, ITAR_Bau_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 25); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_931;
};

func void Rtn_PreStart_931()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_FARM4_TILL");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_FARM4_TILL");
};

func void Rtn_Start_931()
{
	TA_Saw(08, 00, 22, 00, "NW_FARM4_TILL");
	TA_Sit_Throne(22, 00, 08, 00, "NW_FARM4_SEKOB");
};

func void Rtn_FleeDMT_931()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_FLEEDMT_KAP3");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_FLEEDMT_KAP3");
};

func void Rtn_FleeFromSekob_931()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_TAVERNE_TROLLAREA_14");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_TAVERNE_TROLLAREA_14");
};

func void Rtn_FollowCity_931()
{
	TA_Follow_Player(08, 00, 22, 00, "CITY2");
	TA_Follow_Player(22, 00, 08, 00, "CITY2");
};

func void Rtn_FollowBigfarm_931()
{
	TA_Follow_Player(08, 00, 22, 00, "NW_BIGFARM_KITCHEN_02");
	TA_Follow_Player(22, 00, 08, 00, "NW_BIGFARM_KITCHEN_02");
};

func void Rtn_FollowKloster_931()
{
	TA_Follow_Player(08, 00, 22, 00, "KLOSTER");
	TA_Follow_Player(22, 00, 08, 00, "KLOSTER");
};

func void Rtn_City_931()
{
	TA_Stand_WP(08, 00, 22, 00, "NW_CITY_MERCHANT_PATH_25");
	TA_Stand_WP(22, 00, 08, 00, "NW_CITY_MERCHANT_PATH_25");
};

func void Rtn_Bigfarm_931()
{
	TA_Sit_Chair(08, 00, 22, 00, "NW_BIGFARM_KITCHEN_02");
	TA_Sit_Chair(22, 00, 08, 00, "NW_BIGFARM_KITCHEN_02");
};

func void Rtn_Kloster_931()
{
	TA_Pick_FP(08, 00, 22, 00, "NW_MONASTERY_HERB_02");
	TA_Pick_FP(22, 00, 08, 00, "NW_MONASTERY_HERB_02");
};
