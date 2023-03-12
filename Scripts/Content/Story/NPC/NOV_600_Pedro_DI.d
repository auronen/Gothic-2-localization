instance NOV_600_Pedro_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Pedro";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 9;
	id								= 6000;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_PSIONIC", Face_L_Normal_GorNaBar, BodyTex_L, ITAR_NOV_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
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

	// -------- equipped weapons --------
	// EquipItem(self, ItMw_1h_Nov_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_6000;
};

func void Rtn_Start_6000()
{
	TA_Sit_Bench(08, 00, 23, 00, "DI_ORKAREA_PEDRO");
	TA_Sit_Bench(23, 00, 08, 00, "DI_ORKAREA_PEDRO");
};

func void Rtn_Ship_6000()
{
	TA_Sit_Bench(08, 00, 23, 00, "SHIP_DECK_05");
	TA_Sit_Bench(23, 00, 08, 00, "SHIP_DECK_05");
};

func void Rtn_FollowShip_6000()
{
	TA_Follow_Player(08, 00, 23, 00, "SHIP");
	TA_Follow_Player(23, 00, 08, 00, "SHIP");
};

func void Rtn_SleepShip_6000()
{
	TA_Sleep(08, 00, 23, 00, "SHIP_IN_06");
	TA_Sleep(23, 00, 08, 00, "SHIP_IN_06");
};
