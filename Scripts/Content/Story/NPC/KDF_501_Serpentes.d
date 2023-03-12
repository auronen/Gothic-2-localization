instance KDF_501_Serpentes(Npc_Default)
{
	// -------- NPC --------
	name							= "Serpentes";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	flags							= 0;

	voice							= 10;
	id								= 501;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_PSIONIC", Face_N_ImportantGrey, BodyTex_N, ITAR_KDF_H);
	Mdl_SetModelFatness(self, -2);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_501;
};

func void Rtn_Start_501()
{
	TA_Sit_Throne(08, 00, 23, 00, "NW_MONASTERY_THRONE_02");
	TA_Sit_Throne(23, 00, 08, 00, "NW_MONASTERY_THRONE_02");
};
