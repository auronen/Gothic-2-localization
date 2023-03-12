// #############################################
// ##
// ## Neue Welt
// ##
// ############################################

instance SLD_800_Lee(Npc_Default)
{
	// -------- NPC --------
	name							= "Lee";
	npctype							= NpcType_Friend;
	guild							= GIL_SLD;
	flags							= NPC_FLAG_IMMORTAL; // Joly: IMMORTAL // NPC_FLAG_IMMORTAL oder 0

	voice							= 4;
	id								= 800;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Lee, BodyTex_N, ITAR_SLD_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_800;
};

func void Rtn_Start_800()
{
	TA_Stand_Guarding(08, 00, 19, 00, "NW_BIGFARM_HOUSE_LEE_GUARDING");
	TA_Sit_Chair(19, 00, 22, 00, "NW_BIGFARM_HOUSE_UP2_05");
	TA_Sleep(22, 00, 08, 00, "NW_BIGFARM_HOUSE_UP2_04");
};

func void Rtn_WaitForShip_800()
{
	TA_Stand_Guarding(08, 00, 19, 00, "NW_WAITFOR_SHIP_01");
	TA_Stand_Guarding(19, 00, 08, 00, "NW_WAITFOR_SHIP_01");
};

func void Rtn_ShipOff_800()
{
	TA_Stand_Guarding(08, 00, 19, 00, "NW_BIGFARM_HOUSE_LEE_GUARDING");
	TA_Sit_Chair(19, 00, 22, 00, "NW_BIGFARM_HOUSE_UP2_05");
	TA_Sleep(22, 00, 08, 00, "NW_BIGFARM_HOUSE_UP2_04");
};

func void Rtn_Ship_800()
{
	TA_Stand_Guarding(08, 00, 23, 00, "SHIP_CREW_01");
	TA_Sleep(23, 00, 08, 00, "SHIP_IN_06");
};
