// #############################################
// ##
// ## Neue Welt
// ##
// ############################################

instance None_101_Mario(Npc_Default)
{
	// -------- NPC --------
	name							= "Mario";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_IMMORTAL; // Joly: NPC_FLAG_IMMORTAL sonst Plottkiller Kapitel 5 // NPC_FLAG_IMMORTAL oder 0

	voice							= 7;
	id								= 101;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_B_Normal_Kirgo, BodyTex_B, ITAR_MIL_M);
	Mdl_SetModelFatness(self, 1.2);
	Mdl_ApplyOverlayMDS(self, "Humans_MILITIA.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 85); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_SLD_SWORD);

	// -------- daily routine --------
	daily_routine = Rtn_Start_101;
};

func void Rtn_Start_101()
{
	TA_Stand_Drinking(08, 00, 21, 00, "NW_CITY_HABOUR_TAVERN01_STAND_01");
	TA_Stand_Drinking(21, 00, 08, 00, "NW_CITY_HABOUR_TAVERN01_STAND_01");
};

func void Rtn_WaitForShip_101()
{
	TA_Stand_Drinking(08, 00, 19, 00, "NW_WAITFOR_SHIP_01");
	TA_Stand_Drinking(19, 00, 08, 00, "NW_WAITFOR_SHIP_01");
};

func void Rtn_ShipOff_101()
{
	TA_Stand_Drinking(08, 00, 21, 00, "NW_CITY_HABOUR_TAVERN01_STAND_01");
	TA_Stand_Drinking(21, 00, 08, 00, "NW_CITY_HABOUR_TAVERN01_STAND_01");
};

func void Rtn_Ship_101()
{
	TA_Sit_Bench(08, 00, 23, 00, "SHIP_DECK_25");
	TA_Sit_Bench(23, 00, 08, 00, "SHIP_DECK_25");
};
