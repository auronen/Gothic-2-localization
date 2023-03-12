instance DJG_700_Sylvio(Npc_Default)
{
	// -------- NPC --------
	name							= "Sylvio";
	npctype							= NpcType_Main;
	guild							= GIL_DJG;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 9;
	id								= 700;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Scar, BodyTex_N, ITAR_DJG_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_DropDeadAndKill]		= TRUE;

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
	EquipItem(self, ItRw_Crossbow_M_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_700;
};

func void Rtn_Start_700()
{
	TA_Sit_Bench(08, 00, 23, 00, "OW_DJG_ICECAMP_01");
	TA_Sit_Bench(23, 00, 08, 00, "OW_DJG_ICECAMP_01");
};

func void Rtn_IceWait1_700()
{
	TA_Stand_Guarding(00, 00, 23, 00, "OW_ICEREGION_ENTRANCE");
	TA_Stand_Guarding(23, 00, 24, 00, "OW_ICEREGION_ENTRANCE");
};

func void Rtn_IceWait2_700()
{
	TA_Stand_Guarding(00, 00, 23, 00, "OW_DJG_ICEREGION_WAIT2_01");
	TA_Stand_Guarding(23, 00, 24, 00, "OW_DJG_ICEREGION_WAIT2_01");
};

func void Rtn_IceDragon_700()
{
	TA_Stand_Guarding(00, 00, 23, 00, "OW_ICEDRAGON_01");
	TA_Stand_Guarding(23, 00, 24, 00, "OW_ICEDRAGON_01");
};
