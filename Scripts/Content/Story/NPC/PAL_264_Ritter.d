instance PAL_264_Ritter(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_RITTER;
	npctype							= NPCTYPE_OCAMBIENT;
	guild							= GIL_PAL;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 9;
	id								= 264;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_Ratford, BodyTex_L, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItKe_OC_Store, 1); // Joly: Lager wache im OC

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Pal_Sword);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_264;
};

func void Rtn_Start_264()
{
	TA_Stand_Guarding(08, 00, 19, 00, "OC_GUARD_STORE_01");
	TA_Stand_Guarding(19, 00, 08, 00, "OC_GUARD_STORE_01");
};
