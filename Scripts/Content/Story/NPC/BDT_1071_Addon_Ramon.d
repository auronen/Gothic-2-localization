instance BDT_1071_Addon_Ramon(Npc_Default)
{
	// -------- NPC --------
	name							= "Ramon";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 7;
	id								= 1071;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_ToughBald01, BodyTex_L, ITAR_Bloodwyn_Addon);
	Mdl_SetModelFatness(self, 0.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_NewsOverride]			= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 55);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1071;
};

func void Rtn_Start_1071()
{
	TA_Guard_Passage(09, 00, 21, 00, "BL_ENTRANCE_04");
	TA_Guard_Passage(21, 00, 09, 00, "BL_ENTRANCE_04");
};
