instance BDT_1050_Landstreicher(Npc_Default)
{
	// -------- NPC --------
	name							= "Landstreicher";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 9;
	id								= 1050;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Normal02, BodyTex_N, ITAR_BDT_H);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_SLD_Sword);

	// -------- daily routine --------
	start_aistate = ZS_Stand_ArmsCrossed;
};
