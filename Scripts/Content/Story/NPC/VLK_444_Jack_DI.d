// #############################################
// ##
// ## Dracheninsel
// ##
// #############################################

instance VLK_444_Jack_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Jack";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= NPC_FLAG_IMMORTAL; // letzter NSC, der stehen bleiben muß -> Letzter Dialog!! // NPC_FLAG_IMMORTAL oder 0

	voice							= 14;
	id								= 4440;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_ImportantOld, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_PARTYMEMBER]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4440;
};

func void Rtn_Start_4440()
{
	TA_Stand_WP(08, 00, 23, 00, "SHIP_CREW_CAPTAIN");
	TA_Sleep(23, 00, 08, 00, "SHIP_IN_06");
};

func void Rtn_OrkSturmDI_4440()
{
	TA_Stand_WP(08, 00, 23, 00, "SHIP_DECK_03");
	TA_Stand_WP(23, 00, 08, 00, "SHIP_DECK_03");
};
