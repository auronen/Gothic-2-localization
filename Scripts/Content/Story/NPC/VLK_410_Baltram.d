instance VLK_410_Baltram(Npc_Default)
{
	// -------- NPC --------
	name							= "Baltram";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 1;
	id								= 410;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak_Markus_Kark, BodyTex_N, ITAR_VLK_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_NPCIsRanger]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_ShortSword2);

	// -------- daily routine --------
	daily_routine = Rtn_Start_410;
};

func void Rtn_Start_410()
{
	TA_Stand_ArmsCrossed(05, 05, 20, 05, "NW_CITY_ZURIS");
	TA_Smalltalk(20, 05, 00, 05, "NW_CITY_BEER_05");
	TA_Sleep(00, 05, 05, 05, "NW_CITY_HOTEL_BED_02");
};
