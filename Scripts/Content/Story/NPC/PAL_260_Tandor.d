instance PAL_260_Tandor(Npc_Default)
{
	// -------- NPC --------
	name							= "Tandor";
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 8;
	id								= 260;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_P_Tough_Rodriguez, BodyTex_P, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 0);
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
	EquipItem(self, ItMw_1h_Pal_Sword);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_260;
};

func void Rtn_Start_260()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OC_STAND_TANDOR_01");
	TA_Stand_Guarding(23, 00, 08, 00, "OC_STAND_TANDOR_01");
};

func void Rtn_PostenVerlassen_260()
{
	TA_Practice_Sword(08, 00, 23, 00, "OC_CENTER_03");
	TA_Stand_Eating(23, 00, 08, 00, "OC_CENTER_03");
};
