instance SLD_824_Soeldner(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_SOELDNER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 6;
	id								= 824;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_B_ToughBald, BodyTex_B, ITAR_SLD_L);
	Mdl_SetModelFatness(self, 0);
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
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_824;
};

func void Rtn_Start_824()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_BIGFARM_HOUSE_OUT_02");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_BIGFARM_HOUSE_OUT_02");
};
