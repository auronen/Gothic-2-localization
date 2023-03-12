// ***********
// Oldworld
// ***********

instance DJG_713_Biff(Npc_Default)
{
	// -------- NPC --------
	name							= "Biff";
	npctype							= NpcType_Main;
	guild							= GIL_DJG;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 7;
	id								= 713;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal16, BodyTex_N, ITAR_DJG_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_PARTYMEMBER]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItPo_Health_02, 4);
	CreateInvItems(self, ItMi_OldCoin, 1); // Joly: damit man seine Leiche findet, wenn er im Kampf stirbt!

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Axe); // Joly: Axt!!!!! Biff keine andere Waffe geben!!!!!!!!! DOCH DEFAULT MÄSSIG- die instanz gibts nicht mehr

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_713;
};

func void Rtn_PreStart_713()
{
	TA_Smalltalk(08, 00, 23, 00, "OW_DJG_STARTCAMP_01");
	TA_Smalltalk(23, 00, 08, 00, "OW_DJG_STARTCAMP_01");
};

func void Rtn_Start_713()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "OW_DJG_STARTCAMP_01");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "OW_DJG_STARTCAMP_01");
};

func void Rtn_Follow_713()
{
	TA_Follow_Player(08, 00, 23, 00, "OW_PATH_298");
	TA_Follow_Player(23, 00, 08, 00, "OW_PATH_298");
};

func void Rtn_Stay_Swamp_713()
{
	TA_Stand_Guarding(08, 00, 23, 00, "SWAMPDRAGON");
	TA_Stand_Guarding(23, 00, 08, 00, "SWAMPDRAGON");
};

func void Rtn_Stay_Rock_713()
{
	TA_Stand_Guarding(08, 00, 23, 00, "LOCATION_19_01");
	TA_Stand_Guarding(23, 00, 08, 00, "LOCATION_19_01");
};

func void Rtn_Stay_Fire_713()
{
	TA_Stand_Guarding(08, 00, 23, 00, "CASTLE_29");
	TA_Stand_Guarding(23, 00, 08, 00, "CASTLE_29");
};

func void Rtn_Stay_Ice_713()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_ICEDRAGON_09");
	TA_Stand_Guarding(23, 00, 08, 00, "OW_ICEDRAGON_09");
};

func void Rtn_Stay_AwayFromOC_713()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_PATH_298");
	TA_Stand_Guarding(23, 00, 08, 00, "OW_PATH_298");
};

func void Rtn_RunsToPass_713()
{
	TA_RunToWP(08, 00, 23, 00, "START");
	TA_RunToWP(23, 00, 08, 00, "START");
};
