instance Pal_211_Torwache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_RITTER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 12;
	id								= 211;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Wolf, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 55);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_211;
};

func void Rtn_Start_211()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_CITY_CITYHALL_WARROOM_04");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_CITY_CITYHALL_WARROOM_04");
};
