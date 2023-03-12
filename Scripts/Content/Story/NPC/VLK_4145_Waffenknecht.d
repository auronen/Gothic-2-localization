instance VLK_4145_Waffenknecht(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_WAFFENKNECHT;
	npctype							= NPCTYPE_OCAMBIENT;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 1;
	id								= 4145;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NormalBart09, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_NAILED;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4145;
};

func void Rtn_Start_4145()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OC_GUARD_PALISADE_07");
	TA_Stand_Guarding(23, 00, 08, 00, "OC_GUARD_PALISADE_07");
};
