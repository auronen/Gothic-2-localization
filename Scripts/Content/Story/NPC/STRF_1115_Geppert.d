instance STRF_1115_Geppert(Npc_Default)
{
	// -------- NPC --------
	name							= "Geppert";
	npctype							= NpcType_Main;
	guild							= GIL_STRF;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 10;
	id								= 1115;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak_Herek, BodyTex_N, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 15); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Axe_L_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1115;
};

func void Rtn_Start_1115()
{
	TA_Roast_Scavenger(08, 00, 23, 00, "OW_DJG_VORPOSTEN_01");
	TA_Roast_Scavenger(23, 00, 08, 00, "OW_DJG_VORPOSTEN_01");
};

func void Rtn_Tot_1115()
{
	TA_Sleep(08, 00, 23, 00, "TOT");
	TA_Sleep(23, 00, 08, 00, "TOT");
};
