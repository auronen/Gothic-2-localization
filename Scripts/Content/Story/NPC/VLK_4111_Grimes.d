instance VLK_4111_Grimes(Npc_Default)
{
	// -------- NPC --------
	name							= "Grimes";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0;

	voice							= 5;
	id								= 4111;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_ImportantGrey, BodyTex_N, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Axe_L_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4111;
};

func void Rtn_Start_4111()
{
	TA_Pick_Ore(08, 00, 23, 00, "OW_MINE2_GRIMES");
	TA_Pick_Ore(23, 00, 08, 00, "OW_MINE2_GRIMES");
};
