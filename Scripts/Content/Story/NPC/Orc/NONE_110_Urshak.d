instance NONE_110_Urshak(Mst_Default_OrcShaman)
{
	// -------- NPC --------
	name							= "Ur-Shak";
	npctype							= NpcType_Main;
	guild							= GIL_FRIENDLY_ORC;
	flags							= 0;

	voice							= 18;
	id								= 110;

	// -------- attributes --------

	// -------- visuals --------
	Mdl_SetVisual(self, "Orc.mds");
	Mdl_SetVisualBody(self,	"Orc_BodyShaman",		DEFAULT,DEFAULT,	"Orc_HeadShaman",	DEFAULT,	DEFAULT,	-1);

	// -------- fight tactic --------
	fight_tactic = FAI_ORC;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_110;
};

func void Rtn_PreStart_110()
{
	TA_Stand_WP(08, 00, 22, 00, "OW_PATH_340");
	TA_Stand_WP(22, 00, 08, 00, "OW_PATH_340");
};

func void Rtn_Start_110()
{
	TA_Stand_WP(08, 00, 22, 00, "OW_HOSHPAK_04");
	TA_Stand_WP(22, 00, 08, 00, "OW_HOSHPAK_04");
};
