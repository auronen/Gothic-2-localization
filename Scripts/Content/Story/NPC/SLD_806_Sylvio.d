instance SLD_806_Sylvio(Npc_Default)
{
	// -------- NPC --------
	name							= "Sylvio";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	flags							= NPC_FLAG_IMMORTAL; // Joly:Drachenjägeranführer. Muß leben // NPC_FLAG_IMMORTAL oder 0

	voice							= 9;
	id								= 806;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Scar, BodyTex_N, ITAR_SLD_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

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
	EquipItem(self, ItRw_Sld_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_806;
};

func void Rtn_Start_806()
{
	TA_Sit_Chair(08, 00, 22, 00, "NW_BIGFARM_KITCHEN_BULLCO");
	TA_Sit_Chair(22, 00, 08, 00, "NW_BIGFARM_KITCHEN_BULLCO");
};

func void Rtn_Tot_806()
{
	TA_Sleep(08, 00, 23, 00, "TOT");
	TA_Sleep(23, 00, 08, 00, "TOT");
};
