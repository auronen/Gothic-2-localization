instance DJG_733_ToterDrachenjaeger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_ToterDrachenjaeger;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_DJG;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 6;
	id								= 733;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart17, BodyTex_N, ITAR_DJG_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_SLD_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_733;
};

func void Rtn_Start_733()
{
	TA_Sit_Bench(08, 00, 23, 00, "OW_ICEREGION_ENTRANCE_01"); // Joly: vor Iceregion
	TA_Sit_Bench(23, 00, 08, 00, "OW_ICEREGION_ENTRANCE_01");
};
