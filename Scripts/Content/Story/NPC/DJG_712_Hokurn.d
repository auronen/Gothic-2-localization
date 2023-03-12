instance DJG_712_Hokurn(Npc_Default)
{
	// -------- NPC --------
	name							= "Hokurn";
	npctype							= NpcType_Main;
	guild							= GIL_DJG;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 1;
	id								= 712;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Normal_Sharky, BodyTex_B, ITAR_DJG_M);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);
	EquipItem(self, ItRw_Crossbow_M_01);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_712;
};

func void Rtn_PreStart_712()
{
	TA_Smalltalk(08, 00, 23, 00, "OW_DJG_STARTCAMP_01");
	TA_Smalltalk(23, 00, 08, 00, "OW_DJG_STARTCAMP_01");
};

func void Rtn_Start_712()
{
	TA_Smalltalk(08, 00, 23, 00, "SPAWN_OW_BLACKGOBBO_A1");
	TA_Smalltalk(23, 00, 08, 00, "SPAWN_OW_BLACKGOBBO_A1");
};
