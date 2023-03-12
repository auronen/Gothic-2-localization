instance PIR_1301_Addon_Skip_NW(Npc_Default)
{
	// -------- NPC --------
	name							= "Skip";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= NPC_FLAG_IMMORTAL; // Joly: kommt später in der Addonworld nochmal vor.

	voice							= 8;
	id								= 1301;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Pirat01, BodyTex_N, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_ShortSword2);
	EquipItem(self, ItRw_sld_bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1301;
};

func void Rtn_Start_1301()
{
	TA_Sit_Campfire(05, 00, 20, 00, "NW_CITY_PIRATESCAMP_04");
	TA_Sit_Campfire(20, 00, 05, 00, "NW_CITY_PIRATESCAMP_04");
};

func void Rtn_Tot_1301()
{
	TA_Sit_Campfire(05, 00, 20, 00, "TOT");
	TA_Sit_Campfire(20, 00, 05, 00, "TOT");
};
