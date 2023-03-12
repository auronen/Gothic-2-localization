instance VLK_491_Vanja(Npc_Default)
{
	// -------- NPC --------
	name							= "Vanja";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 491;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe", FaceBabe_B_RedLocks, BodyTexBabe_B, ITAR_VlkBabe_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 20);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_491;
};

func void Rtn_Start_491()
{
	TA_Smalltalk(08, 00, 23, 00, "NW_CITY_HABOUR_PUFF_VANJA");
	TA_Smalltalk(23, 00, 08, 00, "NW_CITY_HABOUR_PUFF_VANJA");
};

func void Rtn_Alone_491()
{
	TA_Sweep_FP(08, 00, 23, 00, "NW_CITY_HABOUR_PUFF_VANJA");
	TA_Sweep_FP(23, 00, 08, 00, "NW_CITY_HABOUR_PUFF_VANJA");
};
