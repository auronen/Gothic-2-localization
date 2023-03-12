instance DJG_731_ToterDrachenjaeger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_ToterDrachenjaeger;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_DJG;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 1;
	id								= 731;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_B_Normal_Orik, BodyTex_B, ITAR_DJG_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_SLD_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_731;
};

func void Rtn_Start_731()
{
	TA_Sit_Bench(08, 00, 23, 00, "OW_PATH_064"); // Joly: vor Iceregion
	TA_Sit_Bench(23, 00, 08, 00, "OW_PATH_064");
};
