instance DJG_705_Angar_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Angar";
	npctype							= NpcType_Friend;
	guild							= GIL_DJG;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 4;
	id								= 70500;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_CorAngar, BodyTex_B, ITAR_CorAngar);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_PARTYMEMBER]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItPo_Health_02, 6);
	CreateInvItems(self, ItMi_OldCoin, 1); // Joly: damit man seine Leiche findet, wenn er im Kampf stirbt!

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_70500;
};

func void Rtn_Start_70500()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "SHIP_CREW_03");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "SHIP_CREW_03");
};

func void Rtn_FollowDI_70500()
{
	TA_Follow_Player(08, 00, 23, 00, "SHIP_CREW_03");
	TA_Follow_Player(23, 00, 08, 00, "SHIP_CREW_03");
};

func void Rtn_FireDragonIsland_70500()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "DI_DRACONIANAREA_FIREDRAGON");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "DI_DRACONIANAREA_FIREDRAGON");
};

func void Rtn_ORKOBERST_DI_70500()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "DI_ORKOBERST");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "DI_ORKOBERST");
};

func void Rtn_Troll_DI_70500()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "DI_ORKAREA_TROLL");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "DI_ORKAREA_TROLL");
};
