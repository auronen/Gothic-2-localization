instance SLD_827_Soeldner(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_SOELDNER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 7;
	id								= 827;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Tough_Silas, BodyTex_B, ITAR_SLD_L);
	Mdl_SetModelFatness(self, 2);
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
	EquipItem(self, ItMw_2h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_827;
};

func void Rtn_Start_827()
{
	TA_Smalltalk(07, 02, 20, 58, "NW_BIGFARM_ALLEE_HUT");
	TA_Sit_Bench(20, 58, 07, 02, "NW_BIGFARM_HUT_BENCH");
};
