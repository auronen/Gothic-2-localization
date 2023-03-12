instance VLK_4131_Engrom(Npc_Default)
{
	// -------- NPC --------
	name							= "Engrom";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 12;
	id								= 4131;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart20, BodyTex_N, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 45); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Axe);
	EquipItem(self, ItRW_MIL_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4131;
};

func void Rtn_Start_4131()
{
	TA_Sit_Campfire(08, 00, 23, 00, "SPAWN_TALL_PATH_BANDITOS2_03");
	TA_Sit_Campfire(23, 00, 08, 00, "SPAWN_TALL_PATH_BANDITOS2_03");
};

func void Rtn_Obsessed_4131()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "OW_SAWHUT_MOLERAT_MOVEMENT");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "OW_SAWHUT_MOLERAT_MOVEMENT");
};
