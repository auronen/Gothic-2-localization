instance BAU_970_Orlan(Npc_Default)
{
	// -------- NPC --------
	name							= "Orlan";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_IMMORTAL; // Joly:bis das Ranger treffen war. // NPC_FLAG_IMMORTAL oder 0

	voice							= 5;
	id								= 970;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fatbald", Face_B_Normal_Sharky, BodyTex_B, ITAR_Bau_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_NPCIsRanger]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_970;
};

func void Rtn_Start_970()
{
	TA_Stand_WP(08, 00, 22, 00, "NW_TAVERNE_IN_04");
	TA_Stand_WP(22, 00, 08, 00, "NW_TAVERNE_IN_04");
};

func void Rtn_Wettkampf_970()
{
	TA_Stand_WP(08, 00, 22, 00, "NW_TAVERNE");
	TA_Stand_WP(22, 00, 08, 00, "NW_TAVERNE");
};

func void Rtn_RangerMeeting_970()
{
	TA_RangerMeeting(08, 00, 22, 00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_RangerMeeting(22, 00, 08, 00, "NW_TAVERNE_IN_RANGERMEETING");
};

func void Rtn_Parking_970()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_TAVERNE_IN_RANGERMEETING");
};
