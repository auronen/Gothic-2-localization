// #############################################
// ##
// ## Neue Welt
// ##
// #############################################

instance SLD_801_Torlof(Npc_Default)
{
	// -------- NPC --------
	name							= "Torlof";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	flags							= 0; // Sterblich, optionaler Captain im Kapitel 5! // NPC_FLAG_IMMORTAL oder 0

	voice							= 1;
	id								= 801;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Torlof, BodyTex_N, ITAR_SLD_H);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Sword);
	EquipItem(self, ItRw_Sld_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_801;
};

func void Rtn_PreStart_801()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_BIGFARM_TORLOF");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_BIGFARM_TORLOF");
};

func void Rtn_Start_801()
{
	TA_Stand_Guarding(08, 00, 19, 00, "NW_BIGFARM_TORLOF");
	TA_Sit_Chair(19, 00, 23, 00, "NW_BIGFARM_HOUSE_UP2_07");
	TA_Sleep(23, 00, 08, 00, "NW_BIGFARM_HOUSE_UP2_02");
};

func void Rtn_WaitForShipCaptain_801()
{
	TA_Sit_Bench(08, 00, 20, 00, "NW_WAITFOR_SHIP_CAPTAIN");
	TA_Sit_Bench(20, 00, 08, 00, "NW_WAITFOR_SHIP_CAPTAIN");
};

func void Rtn_AllOnBoard_801()
{
	TA_Stand_WP(08, 00, 23, 00, "SHIP_CREW_CAPTAIN");
	TA_Sleep(23, 00, 08, 00, "SHIP_IN_06");
};
