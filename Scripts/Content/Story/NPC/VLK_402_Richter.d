instance VLK_402_Richter(Npc_Default)
{
	// -------- NPC --------
	name							= "Richter";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 10;
	id								= 402;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Richter, BodyTex_N, ITAR_Judge);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItKe_Richter, 1);

	// -------- daily routine --------
	daily_routine = Rtn_Start_402;
};

func void Rtn_Start_402()
{
	TA_Read_Bookstand(08, 00, 18, 45, "NW_CITY_RICHTER_BED");
	TA_Sit_Throne(18, 45, 22, 00, "NW_CITYHALL_PRIVATE_THRONE");
	TA_Sit_Throne(22, 00, 01, 00, "NW_CITY_RICHTER");
	TA_Sleep(01, 00, 08, 00, "NW_CITY_RICHTER_BED");
};
