// #############################################
// ##
// ## Dracheninsel
// ##
// ############################################

instance VLK_449_Lares_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Lares";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 9; // Joly: hat zu viel mit Diego zu tun, als dass man ihm Diegos Stimme gibt: Deswegen Stimme 8
	id								= 4490;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Lares, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_PARTYMEMBER]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IgnoresFakeGuild]		= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 35);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_SLD_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4490;
};

func void Rtn_Start_4490()
{
	TA_Smalltalk(08, 00, 23, 00, "SHIP_CREW_05");
	TA_Smalltalk(23, 00, 08, 00, "SHIP_CREW_05");
};

func void Rtn_SittingShipDI_4490()
{
	TA_Sit_Bench(08, 00, 23, 00, "SHIP_CREW_04");
	TA_Sit_Bench(23, 00, 08, 00, "SHIP_CREW_04");
};
