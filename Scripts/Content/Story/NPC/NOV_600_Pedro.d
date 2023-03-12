instance NOV_600_Pedro(Npc_Default)
{
	// -------- NPC --------
	name							= "Pedro";
	npctype							= NpcType_Main;
	guild							= GIL_NOV;
	flags							= NPC_FLAG_IMMORTAL; // Joly: HAUPTSTORY: NOV_600_Pedro ist erst noch immortel -> Pedro klaut das Auge Innos im Kapitel 3, ist später Knacki auf der Dracheninsel

	voice							= 9;
	id								= 600;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_PSIONIC", Face_L_Normal_GorNaBar, BodyTex_L, ITAR_NOV_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_NewsOverride]			= TRUE; // damit du noch ins Kloster kommst, wenn du ihn geschlagen hast

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Nov_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_600;
};

func void Rtn_Start_600()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_MONASTERY_MILTEN");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_MONASTERY_MILTEN");
};

func void Rtn_Tot_600()
{
	TA_Stand_Guarding(08, 00, 23, 00, "TOT");
	TA_Stand_Guarding(23, 00, 08, 00, "TOT");
};
