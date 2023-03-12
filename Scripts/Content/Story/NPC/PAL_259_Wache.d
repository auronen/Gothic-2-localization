instance PAL_259_Wache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Wache;
	npctype							= NPCTYPE_OCAMBIENT;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 4;
	id								= 259;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_P_ToughBald_Nek, BodyTex_P, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_259;
};

func void Rtn_Start_259()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OC_OPEN_ROOM_GUARD_01");
	TA_Stand_Guarding(23, 00, 08, 00, "OC_OPEN_ROOM_GUARD_01");
};
