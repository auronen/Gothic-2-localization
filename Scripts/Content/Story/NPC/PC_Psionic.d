// #############################################
// ##
// ## Alte Welt
// ##
// ############################################

instance PC_Psionic(Npc_Default)
{
	// -------- NPC --------
	name							= "Lester";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_IMMORTAL; // Joly: IMMORTAL

	voice							= 13;
	id								= 4;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_Lester, BodyTex_P, ITAR_LESTER);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Kriegshammer2);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4;
};

func void Rtn_Start_4()
{
	TA_Sit_Campfire(08, 00, 23, 00, "NW_XARDAS_TOWER_LESTER");
	TA_Sit_Campfire(23, 00, 08, 00, "NW_XARDAS_TOWER_LESTER");
};

func void Rtn_Xardas_4()
{
	TA_Sleep(08, 00, 23, 00, "NW_XARDAS_TOWER_IN1_31");
	TA_Sleep(23, 00, 08, 00, "NW_XARDAS_TOWER_IN1_31");
};

func void Rtn_XardasWeg_4()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_XARDAS_TOWER_02"); // Joly:nicht mehr verrücken
	TA_Stand_Guarding(23, 00, 08, 00, "NW_XARDAS_TOWER_02");
};

func void Rtn_WaitForPlayer_4() // Übergang KAPITEL 2-3 schickt den Spieler zu Xardas
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "LEVELCHANGE");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "LEVELCHANGE");
};

func void Rtn_WaitForShip_4()
{
	TA_Smalltalk(08, 00, 23, 00, "NW_CITY_WAY_TO_SHIP_19");
	TA_Smalltalk(23, 00, 08, 00, "NW_CITY_WAY_TO_SHIP_19");
};

func void Rtn_ShipOff_4()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_XARDAS_TOWER_02"); // Joly:nicht mehr verrücken
	TA_Stand_Guarding(23, 00, 08, 00, "NW_XARDAS_TOWER_02");
};

func void Rtn_Ship_4()
{
	TA_Smalltalk(08, 00, 23, 00, "SHIP_CREW_19");
	TA_Smalltalk(23, 00, 08, 00, "SHIP_CREW_19");
};
