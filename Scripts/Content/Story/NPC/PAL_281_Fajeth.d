instance PAL_281_Fajeth(Npc_Default)
{
	// -------- NPC --------
	name							= "Fajeth";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= NPC_FLAG_IMMORTAL; // NPC_FLAG_IMMORTAL oder 0

	voice							= 12;
	id								= 281;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Fingers, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Pal_Sword);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_281;
};

func void Rtn_Start_281()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_NEWMINE_09");
	TA_Stand_Guarding(23, 00, 08, 00, "OW_NEWMINE_09");
};
