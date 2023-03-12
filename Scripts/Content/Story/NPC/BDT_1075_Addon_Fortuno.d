instance BDT_1075_Addon_Fortuno(Npc_Default)
{
	// -------- NPC --------
	name							= "Fortuno";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 13;
	id								= 1075;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Fortuno, BodyTex_T, ITAR_LESTER);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- aivars --------
	aivar[AIV_NewsOverride]			= TRUE;
	aivar[AIV_NoFightParker]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 75);

	// -------- inventory --------
	CreateInvItems(self, ItMi_Joint, 5);
	CreateInvItems(self, ItPl_SwampHerb, 3);
	CreateInvItems(self, ItPl_Mushroom_01, 5);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Sword_L_03);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1075;
};

func void Rtn_PreStart_1075()
{
	TA_Stand_ArmsCrossed(08, 00, 18, 00, "BL_DOWN_SIDE_HERB");
	TA_Stand_ArmsCrossed(18, 00, 08, 00, "BL_DOWN_SIDE_HERB");
};

func void Rtn_Start_1075()
{
	TA_Smoke_Joint(08, 00, 08, 10, "BL_DOWN_SIDE_HERB");
	TA_Stomp_Herb(08, 10, 12, 00, "BL_DOWN_SIDE_HERB");
	TA_Smalltalk(12, 00, 15, 00, "BL_DOWN_RING_02");
	TA_Sit_Bench(15, 00, 17, 00, "BL_DOWN_04_BENCH");
	TA_Smoke_Waterpipe(17, 00, 19, 00, "BL_DOWN_SIDE_03");
	TA_Smalltalk(19, 00, 22, 00, "BL_DOWN_RING_02");
	TA_Smoke_Joint(22, 00, 00, 00, "BL_DOWN_RING_04");
	TA_Sleep(00, 00, 08, 00, "BL_DOWN_SIDE_HERB");
};
