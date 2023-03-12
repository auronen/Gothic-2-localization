// #############################################
// ##
// ## Dracheninsel
// ##
// #############################################

instance SLD_801_Torlof_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Torlof";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	flags							= NPC_FLAG_IMMORTAL; // Joly:letzter NSC, der stehen bleiben muß -> Letzter Dialog!! // NPC_FLAG_IMMORTAL oder 0

	voice							= 1;
	id								= 8010;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Torlof, BodyTex_N, ITAR_SLD_H);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_PARTYMEMBER]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Sword);
	EquipItem(self, ItRw_Sld_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_8010;
};

func void Rtn_Start_8010()
{
	TA_Stand_WP(08, 00, 23, 00, "SHIP_CREW_CAPTAIN");
	TA_Sleep(23, 00, 08, 00, "SHIP_IN_06");
};

func void Rtn_OrkSturmDI_8010()
{
	TA_Stand_WP(08, 00, 23, 00, "DI_SHIP_03");
	TA_Stand_WP(23, 00, 08, 00, "DI_SHIP_03");
};
