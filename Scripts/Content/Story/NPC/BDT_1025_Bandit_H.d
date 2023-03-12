instance BDT_1025_Bandit_H(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 9;
	id								= 1025;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_B_Normal01, BodyTex_B, ITAR_BDT_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);
	EquipItem(self, ItRw_SLD_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1025;
};

func void Rtn_Start_1025()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_FOREST_CAVE1_02");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_FOREST_CAVE1_02");
};
