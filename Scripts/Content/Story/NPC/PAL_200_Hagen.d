instance Pal_200_Hagen(Npc_Default)
{
	// -------- NPC --------
	name							= "Lord Hagen";
	npctype							= NpcType_Main;
	guild							= GIL_PAL;
	flags							= NPC_FLAG_IMMORTAL; // Joly: NPC_FLAG_IMMORTAL

	voice							= 4;
	id								= 200;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Tough_Okyl, BodyTex_N, ITAR_PAL_H);
	Mdl_SetModelFatness(self, 1.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_200;
};

func void Rtn_Start_200()
{
	TA_Stand_ArmsCrossed(08, 00, 20, 00, "NW_CITY_HAGEN");
	TA_Stand_ArmsCrossed(20, 00, 08, 00, "NW_CITY_HAGEN");
};

func void Rtn_ShipFree_200()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_CITY_UPTOWNPARADE_HAGEN");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_CITY_UPTOWNPARADE_HAGEN");
};
