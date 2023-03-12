instance VLK_4120_Bilgot(Npc_Default)
{
	// -------- NPC --------
	name							= "Bilgot";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 5;
	id								= 4120;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_Weak_Ulf_Wohlers, BodyTex_P, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItPo_Health_02, 4);
	CreateInvItems(self, ItMi_OldCoin, 1); // Joly: damit man seine Leiche findet, wenn er im Kampf stirbt!

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4120;
};

func void Rtn_Start_4120()
{
	TA_Sit_Campfire(08, 00, 23, 00, "OW_NEWMINE_11");
	TA_Sit_Campfire(23, 00, 08, 00, "OW_NEWMINE_11");
};

func void Rtn_FollowToOCBridge_4120()
{
	TA_Follow_Player(08, 00, 23, 00, "START"); // große Brücke vorm OC
	TA_Follow_Player(23, 00, 08, 00, "START");
};

func void Rtn_FleeOutOfOW_4120()
{
	TA_Sit_Campfire(08, 00, 23, 00, "START"); // am oretrail!
	TA_Sit_Campfire(23, 00, 08, 00, "START");
};

func void Rtn_Tot_4120()
{
	TA_Sit_Campfire(08, 00, 23, 00, "TOT");
	TA_Sit_Campfire(23, 00, 08, 00, "TOT");
};
