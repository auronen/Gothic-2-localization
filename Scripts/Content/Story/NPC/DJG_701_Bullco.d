instance DJG_701_Bullco(Npc_Default)
{
	// -------- NPC --------
	name							= "Bullco";
	npctype							= NpcType_Main;
	guild							= GIL_DJG;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 6;
	id								= 701;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Normal_Olli_Kahn, BodyTex_N, ITAR_DJG_M);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_701;
};

func void Rtn_Start_701()
{
	TA_Sit_Bench(08, 00, 23, 00, "OW_DJG_ICECAMP_02");
	TA_Sit_Bench(23, 00, 08, 00, "OW_DJG_ICECAMP_02");
};

func void Rtn_IceWait1_701()
{
	TA_Stand_ArmsCrossed(00, 00, 23, 00, "OW_ICEREGION_ENTRANCE");
	TA_Stand_ArmsCrossed(23, 00, 24, 00, "OW_ICEREGION_ENTRANCE");
};

func void Rtn_IceWait2_701()
{
	TA_Stand_ArmsCrossed(00, 00, 23, 00, "OW_DJG_ICEREGION_WAIT2_02");
	TA_Stand_ArmsCrossed(23, 00, 24, 00, "OW_DJG_ICEREGION_WAIT2_02");
};

func void Rtn_IceDragon_701()
{
	TA_Stand_ArmsCrossed(00, 00, 23, 00, "OW_ICEDRAGON_02");
	TA_Stand_ArmsCrossed(23, 00, 24, 00, "OW_ICEDRAGON_02");
};

func void Rtn_DJGVorposten_701()
{
	TA_Stand_ArmsCrossed(00, 00, 23, 00, "OW_MOVEMENT_BGOBBO1");
	TA_Stand_ArmsCrossed(23, 00, 24, 00, "OW_MOVEMENT_BGOBBO1");
};

func void Rtn_Follow_701()
{
	TA_Follow_Player(00, 00, 23, 00, "SPAWN_OW_BLACKGOBBO_A1");
	TA_Follow_Player(23, 00, 24, 00, "SPAWN_OW_BLACKGOBBO_A1");
};
