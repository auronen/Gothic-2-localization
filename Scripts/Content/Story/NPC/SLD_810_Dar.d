instance SLD_810_Dar(Npc_Default)
{
	// -------- NPC --------
	name							= "Dar";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 3;
	id								= 810;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal_Spassvogel, BodyTex_N, ITAR_SLD_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_ToughGuyNewsOverride]	= TRUE; // wegen Stimme!

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItMi_Joint, 10);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);
	EquipItem(self, ItRw_Sld_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_810;
};

func void Rtn_PreStart_810()
{
	TA_Smoke_Joint(08, 00, 22, 00, "NW_BIGFARM_KITCHEN_DAR");
	TA_Smoke_Joint(22, 00, 08, 00, "NW_BIGFARM_KITCHEN_DAR");
};

func void Rtn_Start_810()
{
	TA_Smoke_Joint(08, 00, 22, 00, "NW_BIGFARM_KITCHEN_DAR");
	TA_Sit_Chair(22, 00, 08, 00, "NW_BIGFARM_HOUSE_12");
};
