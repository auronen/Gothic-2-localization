// #############################################
// ##
// ## Dracheninsel
// ##
// #############################################

instance PC_Mage_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Milten";
	npctype							= NpcType_Friend;
	guild							= GIL_KDF;
	flags							= 0;

	voice							= 3;
	id								= 22;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Milten, BodyTex_N, ITAR_KDF_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- aivars --------
	aivar[AIV_PARTYMEMBER]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_22;
};

func void Rtn_Start_22()
{
	TA_Smalltalk(08, 00, 23, 00, "SHIP_CREW_19");
	TA_Smalltalk(23, 00, 08, 00, "SHIP_CREW_19");
};

func void Rtn_UNDEADDRAGONDEAD_22()
{
	TA_Stand_WP(08, 00, 23, 00, "SKELETTE");
	TA_Stand_WP(23, 00, 08, 00, "SKELETTE");
};

func void Rtn_SittingShipDI_22()
{
	TA_Sit_Bench(08, 00, 23, 00, "SHIP_CREW_19");
	TA_Sit_Bench(23, 00, 08, 00, "SHIP_CREW_19");
};
