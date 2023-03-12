// #############################################
// ##
// ## Dracheninsel
// ##
// ############################################

instance PC_Psionic_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Lester";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 13;
	id								= 24;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_Lester, BodyTex_P, ITAR_LESTER);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_PARTYMEMBER]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Kriegshammer2);

	// -------- daily routine --------
	daily_routine = Rtn_Start_24;
};

func void Rtn_Start_24()
{
	TA_Smalltalk(08, 00, 23, 00, "SHIP_CREW_19");
	TA_Smalltalk(23, 00, 08, 00, "SHIP_CREW_19");
};

func void Rtn_UNDEADDRAGONDEAD_24()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "DI_DRACONIANAREA_19");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "DI_DRACONIANAREA_19");
};

func void Rtn_SittingShipDI_24()
{
	TA_Sit_Bench(08, 00, 23, 00, "SHIP_CREW_19");
	TA_Sit_Bench(23, 00, 08, 00, "SHIP_CREW_19");
};
