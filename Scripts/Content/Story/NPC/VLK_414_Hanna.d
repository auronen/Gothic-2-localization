instance VLK_414_Hanna(Npc_Default)
{
	// -------- NPC --------
	name							= "Hanna";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 414;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe1", FaceBabe_N_WhiteCloth, BodyTex_N, ITAR_VlkBabe_L);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 35);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_414;
};

func void Rtn_Start_414()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_CITY_HANNA");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_CITY_HANNA");
};
