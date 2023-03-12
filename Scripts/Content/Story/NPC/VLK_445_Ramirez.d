instance VLK_445_Ramirez(Npc_Default)
{
	// -------- NPC --------
	name							= "Ramirez";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0;

	voice							= 14;
	id								= 445;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Tough_Okyl, BodyTex_N, ITAR_VLK_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_DropDeadAndKill]		= TRUE;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Meisterdegen);

	// -------- daily routine --------
	daily_routine = Rtn_Start_445;
};

func void Rtn_Start_445()
{
	TA_Stand_ArmsCrossed(07, 00, 23, 00, "NW_CITY_KANAL_ROOM_04_01");
	TA_Sit_Throne(23, 00, 07, 00, "NW_CITY_KANAL_ROOM_05_02");
};
