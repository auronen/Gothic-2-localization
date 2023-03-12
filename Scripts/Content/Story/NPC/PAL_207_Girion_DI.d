instance Pal_207_Girion_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Girion";
	npctype							= NpcType_Friend;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 8;
	id								= 2070;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Lefty, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 55);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_2070;
};

func void Rtn_Start_2070()
{
	TA_Sit_Bench(08, 00, 23, 00, "SHIP_DECK_18");
	TA_Sit_Bench(23, 00, 08, 00, "SHIP_DECK_18");
};
