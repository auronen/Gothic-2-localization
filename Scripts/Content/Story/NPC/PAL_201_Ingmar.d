instance Pal_201_Ingmar(Npc_Default)
{
	// -------- NPC --------
	name							= "Ingmar";
	npctype							= NpcType_Main;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 06;
	id								= 201;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_ToughBart01, BodyTex_N, ITAR_PAL_H);
	Mdl_SetModelFatness(self, 1.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_201;
};

func void Rtn_Start_201()
{
	TA_Stand_WP(08, 00, 23, 00, "NW_CITY_CITYHALL_WARROOM_02");
	TA_Stand_WP(23, 00, 08, 00, "NW_CITY_CITYHALL_WARROOM_02");
};
