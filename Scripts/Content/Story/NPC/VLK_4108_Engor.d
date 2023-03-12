instance VLK_4108_Engor(Npc_Default)
{
	// -------- NPC --------
	name							= "Engor";
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 13;
	id								= 4108;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_Jackal, BodyTex_L, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4108;
};

func void Rtn_Start_4108()
{
	TA_Read_Bookstand(08, 00, 22, 00, "OC_COUNT_01");
	TA_Sleep(22, 00, 08, 00, "OC_GUARD_ROOM_03_SLEEP");
};
