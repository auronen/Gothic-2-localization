instance PAL_250_Garond(Npc_Default)
{
	// -------- NPC --------
	name							= "Garond";
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_PAL;
	flags							= NPC_FLAG_IMMORTAL; // Joly: NPC_FLAG_IMMORTAL

	voice							= 10;
	id								= 250;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Raven, BodyTex_N, ITAR_PAL_H);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

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
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_250;
};

func void Rtn_PreStart_250()
{
	TA_Sit_Throne(08, 00, 21, 00, "OC_EBR_HALL_THRONE");
	TA_Sit_Throne(21, 00, 08, 00, "OC_EBR_HALL_THRONE");
};

func void Rtn_Start_250()
{
	TA_Sit_Throne(08, 00, 21, 00, "OC_EBR_HALL_THRONE");
	TA_Sleep(21, 00, 08, 00, "OC_EBR_ROOM_04_SLEEP");
};
