instance VLK_4130_Talbin(Npc_Default)
{
	// -------- NPC --------
	name							= "Talbin";
	npctype							= NpcType_Friend; // Joly: flieht mit dem sc aus dem minental!
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 7;
	id								= 4130;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Bullit, BodyTex_N, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);
	EquipItem(self, ItRW_SLD_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4130;
};

func void Rtn_Start_4130()
{
	TA_Sit_Campfire(08, 00, 23, 00, "SPAWN_TALL_PATH_BANDITOS2_03");
	TA_Sit_Campfire(23, 00, 08, 00, "SPAWN_TALL_PATH_BANDITOS2_03");
};

func void Rtn_FleePass_4130()
{
	TA_RunToWP(08, 00, 23, 00, "START");
	TA_RunToWP(23, 00, 08, 00, "START");
};

func void Rtn_IntoPass_4130()
{
	TA_Stand_Eating(08, 00, 23, 00, "TOT");
	TA_Stand_Eating(23, 00, 08, 00, "TOT");
};
