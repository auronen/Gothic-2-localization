instance PAL_268_Udar(Npc_Default)
{
	// -------- NPC --------
	name							= "Udar";
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 9;
	id								= 268;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Normal_Stone, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_NAILED; // damit er nicht runterspringt

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Pal_Sword);
	EquipItem(self, ItRw_Crossbow_H_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_268;
};

func void Rtn_Start_268()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OC_CENTER_GUARD_03");
	TA_Stand_Guarding(23, 00, 08, 00, "OC_CENTER_GUARD_03");
};
