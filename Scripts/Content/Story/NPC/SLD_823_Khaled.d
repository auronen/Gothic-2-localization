instance SLD_823_Khaled(Npc_Default)
{
	// -------- NPC --------
	name							= "Khaled";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 11;
	id								= 823;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_B_Thorus, BodyTex_B, ITAR_SLD_H);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_823;
};

func void Rtn_Start_823()
{
	TA_Stand_Guarding(07, 55, 21, 55, "NW_BIGFARM_HOUSE_12");
	TA_Stand_Eating(21, 55, 23, 55, "NW_BIGFARM_HOUSE_UP2_06");
	TA_Sleep(23, 55, 07, 55, "NW_BIGFARM_HOUSE_UP2_02");
};
