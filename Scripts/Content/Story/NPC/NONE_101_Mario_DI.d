// #############################################
// ##
// ## Dracheninsel
// ##
// ############################################

instance None_101_Mario_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Mario";
	npctype							= NpcType_Main;
	guild							= GIL_DMT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 7;
	id								= 1010;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_B_Normal_Kirgo, BodyTex_B, ITAR_MIL_M);
	Mdl_SetModelFatness(self, 1.2);
	Mdl_ApplyOverlayMDS(self, "Humans_MILITIA.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_EnemyOverride]		= TRUE;
	aivar[AIV_MagicUser]			= MAGIC_NEVER;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 95); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ITWR_DementorObsessionBook_MIS, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Sturmbringer);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1010;
};

func void Rtn_Start_1010()
{
	TA_Sit_Bench(08, 00, 23, 00, "SHIP_DECK_25");
	TA_Sit_Bench(23, 00, 08, 00, "SHIP_DECK_25");
};

func void Rtn_OrkSturmDI_1010()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "DI_MARIO_AMBUSH");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "DI_MARIO_AMBUSH");
};
