// #############################################
// ##
// ## Neue Welt
// ##
// ############################################

instance VLK_439_Vatras(Npc_Default)
{
	// -------- NPC --------
	name							= "Vatras";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= NPC_FLAG_IMMORTAL; // Joly: NPC_FLAG_IMMORTAL

	voice							= 5;
	id								= 439;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_B_Saturas, BodyTex_B, ITAR_KDW_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- aivars --------
	aivar[AIV_MagicUser]			= MAGIC_ALWAYS;
	aivar[AIV_IgnoresFakeGuild]		= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	CreateInvItems(self, ItSc_LightHeal, 2);
	CreateInvItems(self, ItSc_Zap, 2);
	CreateInvItems(self, ItSc_Icebolt, 2);
	CreateInvItems(self, ItSc_Light, 2);
	CreateInvItems(self, ItSc_TrfScavenger, 1);

	// -------- daily routine --------
	daily_routine = Rtn_Start_439;
};

func void Rtn_Start_439()
{
	TA_Preach_Vatras(05, 05, 20, 10, "NW_CITY_MERCHANT_TEMPLE_FRONT");
	TA_Pray_Innos_FP(20, 10, 05, 05, "NW_CITY_MERCHANT_TEMPLE_IN");
};

func void Rtn_RitualInnosEyeRepair_439()
{
	TA_Stand_Guarding(08, 00, 20, 00, "NW_TROLLAREA_RITUAL_04");
	TA_Stand_Guarding(20, 00, 08, 00, "NW_TROLLAREA_RITUAL_04");
};

func void Rtn_RitualInnosEye_439()
{
	TA_Circle(08, 00, 23, 00, "NW_TROLLAREA_RITUAL_04");
	TA_Circle(23, 00, 08, 00, "NW_TROLLAREA_RITUAL_04");
};

func void Rtn_WAITFORSHIP_439()
{
	TA_Sit_Bench(08, 00, 23, 00, "NW_WAITFOR_SHIP_04");
	TA_Sit_Bench(23, 00, 08, 00, "NW_WAITFOR_SHIP_04");
};

func void Rtn_Ship_439()
{
	TA_Read_Bookstand(08, 00, 23, 00, "SHIP_IN_22");
	TA_Sleep(23, 00, 08, 00, "SHIP_IN_04");
};

func void Rtn_PRAY_439()
{
	TA_Pray_Innos_FP(05, 05, 20, 10, "NW_CITY_MERCHANT_TEMPLE_FRONT");
	TA_Pray_Innos_FP(20, 10, 05, 05, "NW_CITY_MERCHANT_TEMPLE_IN");
};
