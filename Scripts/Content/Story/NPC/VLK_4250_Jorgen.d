// #############################################
// ##
// ## Neue Welt
// ##
// #############################################

instance VLK_4250_Jorgen(Npc_Default)
{
	// -------- NPC --------
	name							= "Jorgen";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_IMMORTAL; // Joly: Immortal Kapitän fürs Schiff im Kapitel 5! Mortal, Optionale Kapitäne: Torlof und Jack!!!!!!!!!

	voice							= 7;
	id								= 4250;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Tough_Skip, BodyTex_N, ITAR_VLK_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4250;
};

func void Rtn_Start_4250()
{
	TA_Stand_ArmsCrossed(08, 00, 20, 00, "NW_MONASTERY_BRIDGE_01");
	TA_Stand_ArmsCrossed(20, 00, 08, 00, "NW_MONASTERY_BRIDGE_01");
};

func void Rtn_Kloster_4250()
{
	TA_Stand_ArmsCrossed(08, 00, 20, 00, "NW_MONASTERY_PLACE_06");
	TA_Sleep(20, 00, 08, 00, "NW_MONASTERY_NOVICE04_06");
};

func void Rtn_RausAusKloster_4250()
{
	TA_Stand_ArmsCrossed(08, 00, 20, 00, "NW_BIGFARM_KITCHEN_OUT_06");
	TA_Stand_ArmsCrossed(20, 00, 08, 00, "NW_BIGFARM_KITCHEN_OUT_06");
};

func void Rtn_WaitForShipCaptain_4250()
{
	TA_Sit_Bench(08, 00, 20, 00, "NW_WAITFOR_SHIP_CAPTAIN");
	TA_Sit_Bench(20, 00, 08, 00, "NW_WAITFOR_SHIP_CAPTAIN");
};

func void Rtn_AllOnBoard_4250()
{
	TA_Stand_WP(08, 00, 23, 00, "SHIP_CREW_CAPTAIN");
	TA_Sleep(23, 00, 08, 00, "SHIP_IN_06");
};
