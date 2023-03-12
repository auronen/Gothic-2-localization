instance PAL_252_Parcival(Npc_Default)
{
	// -------- NPC --------
	name							= "Parcival";
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_PAL;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 13;
	id								= 252;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_P_Tough_Drago, BodyTex_P, ITAR_PAL_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_252;
};

func void Rtn_Start_252()
{
	TA_Smalltalk(08, 00, 21, 00, "OC_EBR_HALL_CENTER");
	TA_Sleep(21, 00, 08, 00, "OC_EBR_ROOM_01_SLEEP");
};
