instance VLK_467_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BUERGER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 6;
	id								= 467;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_Normal_GorNaBar, BodyTex_L, ITAR_Vlk_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_SWORD);

	// -------- daily routine --------
	daily_routine = Rtn_Start_467;
};

func void Rtn_Start_467()
{
	TA_Stand_ArmsCrossed(11, 00, 19, 00, "NW_CITY_WATCH_FIGHT_02");
	TA_Smalltalk(19, 00, 03, 00, "NW_CITY_HABOUR_03");
	TA_Sit_Throne(03, 00, 05, 00, "NW_CITY_PUFF_THRONE");
	TA_Smalltalk(05, 00, 11, 00, "NW_CITY_WAY_TO_SHIP_01");
};
