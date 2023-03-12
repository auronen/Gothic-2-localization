instance KDW_140300_Addon_Myxir_CITY(Npc_Default)
{
	// -------- NPC --------
	name							= "Myxir";
	npctype							= NpcType_Main;
	guild							= GIL_KDW;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 12;
	id								= 140300;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_P_NormalBart_Cronos, BodyTex_P, ITAR_KDW_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- aivars --------
	aivar[AIV_MagicUser]			= MAGIC_ALWAYS;
	aivar[AIV_IgnoresFakeGuild]		= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_140300;
};

func void Rtn_Start_140300()
{
	TA_Pray_Innos_FP(05, 05, 20, 10, "NW_CITY_MERCHANT_TEMPLE_IN");
	TA_Stand_WP(20, 10, 05, 05, "NW_CITY_MERCHANT_TEMPLE_FRONT");
};
