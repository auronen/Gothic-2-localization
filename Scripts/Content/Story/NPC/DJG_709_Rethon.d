instance DJG_709_Rethon(Npc_Default)
{
	// -------- NPC --------
	name							= "Rethon";
	npctype							= NpcType_Main;
	guild							= GIL_DJG;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 12;
	id								= 709;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_CoolPock, BodyTex_N, ITAR_DJG_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_709;
};

func void Rtn_Start_709()
{
	TA_Smith_Sharp(08, 00, 08, 30, "OC_SMITH_SHARP");
	TA_Stand_Guarding(08, 30, 09, 00, "OC_CENTER_04");
	TA_Practice_Sword(09, 00, 09, 30, "OC_CENTER_04");
	TA_Smith_Sharp(09, 30, 10, 00, "OC_SMITH_SHARP");
	TA_Stand_Guarding(10, 00, 10, 30, "OC_CENTER_04");
	TA_Practice_Sword(10, 30, 11, 00, "OC_CENTER_04");
	TA_Smith_Sharp(11, 00, 11, 30, "OC_SMITH_SHARP");
	TA_Stand_Guarding(11, 30, 12, 00, "OC_CENTER_04");
	TA_Practice_Sword(12, 00, 12, 30, "OC_CENTER_04");
	TA_Smith_Sharp(12, 30, 13, 00, "OC_SMITH_SHARP");
	TA_Stand_Guarding(13, 00, 13, 30, "OC_CENTER_04");
	TA_Practice_Sword(13, 30, 14, 00, "OC_CENTER_04");
	TA_Smith_Sharp(14, 00, 14, 30, "OC_SMITH_SHARP");
	TA_Stand_Guarding(14, 30, 15, 00, "OC_CENTER_04");
	TA_Practice_Sword(15, 00, 15, 30, "OC_CENTER_04");
	TA_Smith_Sharp(15, 30, 16, 00, "OC_SMITH_SHARP");
	TA_Stand_Guarding(16, 00, 16, 30, "OC_CENTER_04");
	TA_Practice_Sword(16, 30, 17, 00, "OC_CENTER_04");
	TA_Smith_Sharp(17, 00, 17, 30, "OC_SMITH_SHARP");
	TA_Stand_Guarding(17, 30, 18, 00, "OC_CENTER_04");
	TA_Practice_Sword(18, 00, 18, 30, "OC_CENTER_04");
	TA_Smith_Sharp(18, 30, 19, 00, "OC_SMITH_SHARP");
	TA_Stand_Guarding(19, 00, 19, 30, "OC_CENTER_04");
	TA_Practice_Sword(19, 30, 20, 00, "OC_CENTER_04");

	TA_Sit_Campfire(20, 00, 08, 00, "OC_CAMPFIRE_OUT_03");
};
