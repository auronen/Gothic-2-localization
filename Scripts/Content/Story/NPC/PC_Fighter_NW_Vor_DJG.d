//******************************************
//   Gorn in der NewWorld vor dem 4. Kapitel
//******************************************

instance PC_Fighter_NW_vor_DJG(Npc_Default)
{
	// -------- NPC --------
	name							= "Gorn";
	npctype							= NpcType_Friend;
	guild							= GIL_SLD;
	flags							= 0;

	voice							= 12;
	id								= 813;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_B_Gorn, BodyTex_B, ITAR_SLD_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_813;
};

// -------------------------------------
func void Rtn_Start_813()
{
	TA_Sit_Chair(08, 00, 23, 00, "NW_BIGFARM_HOUSE_14");
	TA_Sit_Chair(23, 00, 08, 00, "NW_BIGFARM_HOUSE_14");
};

func void Rtn_Tot_813()
{
	TA_Sit_Campfire(08, 00, 23, 00, "TOT");
	TA_Sit_Campfire(23, 00, 08, 00, "TOT");
};
