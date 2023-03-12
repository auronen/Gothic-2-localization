instance DJG_705_Angar_NW(Npc_Default)
{
	// -------- NPC --------
	name							= "Angar";
	npctype							= NpcType_Main;
	guild							= GIL_DJG;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 4;
	id								= 7050;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_CorAngar, BodyTex_B, ITAR_CorAngar);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_7050;
};

func void Rtn_Start_7050()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "FARM3");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "FARM3");
};

func void Rtn_WaitForShip_7050()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "NW_WAITFOR_SHIP_03");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "NW_WAITFOR_SHIP_03");
};

func void Rtn_Ship_7050()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "SHIP_CREW_03");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "SHIP_CREW_03");
};
