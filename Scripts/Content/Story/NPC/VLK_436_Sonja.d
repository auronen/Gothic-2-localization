instance VLK_436_Sonja(Npc_Default)
{
	// -------- NPC --------
	name							= "Sonja";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 436;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe6", FaceBabe_L_Charlotte2, BodyTexBabe_L, ITAR_VlkBabe_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_436;
};

func void Rtn_Start_436()
{
	TA_Sit_Throne(08, 00, 23, 00, "NW_CITY_PUFF_THRONE");
	TA_Sit_Throne(23, 00, 08, 00, "NW_CITY_PUFF_THRONE");
};
