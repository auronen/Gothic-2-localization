instance NOV_602_Ulf(Npc_Default)
{
	// -------- NPC --------
	name							= "Ulf";
	npctype							= NpcType_Main;
	guild							= GIL_NOV;
	flags							= 0;

	voice							= 3;
	id								= 602;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak05, BodyTex_N, ITAR_NOV_L);
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

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Nov_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_602;
};

func void Rtn_Start_602()
{
	TA_Stand_Drinking(08, 00, 20, 00, "NW_CITY_BEER_04");
	TA_Stand_Drinking(20, 00, 08, 00, "NW_CITY_BEER_04");
};

func void Rtn_Suche_602()
{
	TA_Stand_Guarding(08, 00, 20, 00, "NW_TROLLAREA_PATH_42");
	TA_Stand_Guarding(20, 00, 08, 00, "NW_TROLLAREA_PATH_42");
};

func void Rtn_Wait_602()
{
	TA_Stand_Guarding(08, 00, 20, 00, "NW_TROLLAREA_PATH_22");
	TA_Stand_Guarding(20, 00, 08, 00, "NW_TROLLAREA_PATH_22");
};

func void Rtn_Follow_602()
{
	TA_Follow_Player(08, 00, 20, 00, "NW_TROLLAREA_PATH_13");
	TA_Follow_Player(20, 00, 08, 00, "NW_TROLLAREA_PATH_13");
};
