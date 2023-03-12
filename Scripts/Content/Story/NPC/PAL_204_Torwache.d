instance Pal_204_Torwache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Torwache;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 9;
	id								= 204;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Whistler, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 0.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_NewsOverride]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 55);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_204;
};

func void Rtn_Start_204()
{
	TA_Guard_Passage(08, 00, 23, 00, "NW_CITYHALL_GUARD_01");
	TA_Guard_Passage(23, 00, 08, 00, "NW_CITYHALL_GUARD_01");
};
