instance VLK_400_Larius(Npc_Default)
{
	// -------- NPC --------
	name							= "Larius";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 1;
	id								= 400;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Weak_Cipher_alt, BodyTex_N, ITAR_Governor);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_400;
};

func void Rtn_Start_400()
{
	TA_Sit_Throne(08, 00, 12, 00, "NW_CITY_LARIUS");
	TA_Read_Bookstand(12, 00, 15, 00, "NW_CITY_LARIUS");
	TA_Sit_Throne(15, 00, 19, 00, "NW_CITY_LARIUS");
	TA_Sit_Throne(19, 00, 22, 00, "NW_CITYHALL_PRIVATE_THRONE");
	TA_Sleep(22, 00, 08, 00, "NW_CITY_LARIUS_BED");
};
