instance VLK_446_Jesper(Npc_Default)
{
	// -------- NPC --------
	name							= "Jesper";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 9;
	id								= 446;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Normal07, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_DropDeadAndKill]		= TRUE;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItKe_Fingers, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_446;
};

func void Rtn_PreStart_446()
{
	TA_Stand_ArmsCrossed(07, 00, 23, 00, "NW_CITY_KANAL_22");
	TA_Stand_ArmsCrossed(23, 00, 07, 00, "NW_CITY_KANAL_22");
};

func void Rtn_Start_446()
{
	TA_Cook_Stove(07, 00, 14, 00, "NW_CITY_KANAL_ROOM_05_03_COOK");
	TA_Sit_Throne(14, 00, 18, 00, "NW_CITY_KANAL_ROOM_05_02");
	TA_Cook_Stove(18, 00, 21, 00, "NW_CITY_KANAL_ROOM_05_03_COOK");
	TA_Sit_Throne(21, 00, 23, 00, "NW_CITY_KANAL_ROOM_05_02");
	TA_Sleep(23, 00, 07, 00, "NW_CITY_KANAL_ROOM_05_BED_02");
};
