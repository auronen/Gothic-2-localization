//******************************************
//   Gorn in der Oldworld als Drachenjäger
//******************************************

instance PC_Fighter_DJG(Npc_Default)
{
	// -------- NPC --------
	name							= "Gorn";
	npctype							= NpcType_Friend;
	guild							= GIL_DJG;
	flags							= 0;

	voice							= 12;
	id								= 704;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_B_Gorn, BodyTex_B, ITAR_DJG_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItPo_Health_02, 6);
	CreateInvItems(self, ItMi_OldCoin, 1); // Joly: damit man seine Leiche findet, wenn er im Kampf stirbt!

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Axe);
	EquipItem(self, ItRw_Crossbow_M_01);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_704;
};

func void Rtn_PreStart_704()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "OW_DJG_STARTCAMP_01");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "OW_DJG_STARTCAMP_01");
};

func void Rtn_Start_704()
{
	TA_Sit_Campfire(08, 00, 23, 00, "OW_DJG_ROCKCAMP_01");
	TA_Sit_Campfire(23, 00, 08, 00, "OW_DJG_ROCKCAMP_01");
};

func void Rtn_RunToRockRuinBridge_704()
{
	TA_RunToWP(08, 00, 23, 00, "LOCATION_19_01");
	TA_RunToWP(23, 00, 08, 00, "LOCATION_19_01");
};

func void Rtn_Tot_704()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "TOT");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "TOT");
};
