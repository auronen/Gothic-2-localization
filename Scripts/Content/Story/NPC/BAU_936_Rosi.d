instance BAU_936_Rosi(Npc_Default)
{
	// -------- NPC --------
	name							= "Rosi";
	npctype							= NpcType_Main;
	guild							= GIL_BAU;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 17;
	id								= 936;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_Hure, BodyTexBabe_N, ITAR_BauBabe_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 15); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_936;
};

func void Rtn_Start_936()
{
	TA_Cook_Stove(08, 00, 22, 00, "NW_FARM4_ROSI");
	TA_Cook_Stove(22, 00, 08, 00, "NW_FARM4_ROSI");
	// TA_Sleep (22,00,08,00,"NW_FARM4_IN_BED");
};

func void Rtn_FleeDMT_936()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_FLEEDMT_KAP3");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_FLEEDMT_KAP3");
};

func void Rtn_FleeFromSekob_936()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_TAVERNE_TROLLAREA_14");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_TAVERNE_TROLLAREA_14");
};

func void Rtn_FollowCity_936()
{
	TA_Follow_Player(08, 00, 22, 00, "CITY2");
	TA_Follow_Player(22, 00, 08, 00, "CITY2");
};

func void Rtn_FollowBigfarm_936()
{
	TA_Follow_Player(08, 00, 22, 00, "NW_BIGFARM_KITCHEN_02");
	TA_Follow_Player(22, 00, 08, 00, "NW_BIGFARM_KITCHEN_02");
};

func void Rtn_FollowKloster_936()
{
	TA_Follow_Player(08, 00, 22, 00, "KLOSTER");
	TA_Follow_Player(22, 00, 08, 00, "KLOSTER");
};

func void Rtn_City_936()
{
	TA_Sit_Bench(08, 00, 22, 00, "NW_CITY_MERCHANT_PATH_25");
	TA_Sit_Bench(22, 00, 08, 00, "NW_CITY_MERCHANT_PATH_25");
};

func void Rtn_Bigfarm_936()
{
	TA_Sit_Chair(08, 00, 22, 00, "NW_BIGFARM_KITCHEN_02");
	TA_Sit_Chair(22, 00, 08, 00, "NW_BIGFARM_KITCHEN_02");
};

func void Rtn_Kloster_936()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_MONASTERY_SHEEP_01");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_MONASTERY_SHEEP_01");
};
