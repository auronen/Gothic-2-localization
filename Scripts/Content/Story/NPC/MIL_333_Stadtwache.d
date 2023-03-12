instance Mil_333_Stadtwache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Stadtwache;
	npctype							= NpcType_Main;
	guild							= GIL_MIL;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 6;
	id								= 333;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_P_Normal03, BodyTex_P, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_NewsOverride]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_333;
};

func void Rtn_Start_333()
{
	TA_Guard_Passage(08, 00, 22, 00, "NW_CITY_ENTRANCE_BACK_GUARD_02");
	TA_Guard_Passage(22, 00, 08, 00, "NW_CITY_ENTRANCE_BACK_GUARD_02");
};
