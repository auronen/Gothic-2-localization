// #############################################
// ##
// ## Dracheninsel
// ##
// #############################################

instance VLK_4250_Jorgen_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Jorgen";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_IMMORTAL; // Joly:letzter NSC, der stehen bleiben muß -> Letzter Dialog!! // NPC_FLAG_IMMORTAL oder 0

	voice							= 7;
	id								= 42500;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Tough_Skip, BodyTex_N, ITAR_VLK_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_PARTYMEMBER]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_42500;
};

func void Rtn_Start_42500()
{
	TA_Stand_WP(08, 00, 23, 00, "SHIP_CREW_CAPTAIN");
	TA_Sleep(23, 00, 08, 00, "SHIP_IN_06");
};
