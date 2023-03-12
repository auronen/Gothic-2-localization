instance Mil_305_Torwache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_TORWACHE;
	npctype							= NpcType_Main;
	guild							= GIL_MIL;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 3;
	id								= 305;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Normal01, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 0.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_NewsOverride]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_305;
};

func void Rtn_Start_305()
{
	TA_Guard_Passage(08, 00, 22, 00, "NW_CITY_UPTOWN_GUARD_02");
	TA_Guard_Passage(22, 00, 08, 00, "NW_CITY_UPTOWN_GUARD_02");
};
