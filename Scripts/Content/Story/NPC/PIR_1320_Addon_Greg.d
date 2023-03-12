instance PIR_1320_Addon_Greg(Npc_Default)
{
	// -------- NPC --------
	name							= "Greg";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 1;
	id								= 1320;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_P_Greg, BodyTex_P, ITAR_PIR_H_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Piratensaebel);
	// EquipItem(self, ItRw_Bow_H_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1320;
};

func void Rtn_Start_1320()
{
	TA_Stand_WP(05, 00, 20, 00, "ADW_PIRATECAMP_GREG");
	TA_Stand_WP(20, 00, 05, 00, "ADW_PIRATECAMP_GREG");
};

func void Rtn_HOME_1320()
{
	TA_Sit_Bench(22, 00, 12, 00, "ADW_PIRATECAMP_HUT4_01");
	TA_Sit_Bench(12, 00, 22, 00, "ADW_PIRATECAMP_HUT4_01");
};
