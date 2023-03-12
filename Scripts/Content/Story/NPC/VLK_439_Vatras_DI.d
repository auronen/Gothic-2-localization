// #############################################
// ##
// ## Dracheninsel
// ##
// ############################################

instance VLK_439_Vatras_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Vatras";
	npctype							= NpcType_Friend;
	guild							= GIL_VLK;
	flags							= NPC_FLAG_IMMORTAL; // Joly: wird gebraucht im Kapitel 3 Hauptstory und aufs Schiff Kapitel 5 !!!!

	voice							= 5;
	id								= 4390;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_B_Saturas, BodyTex_B, ITAR_KDW_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- aivars --------
	aivar[AIV_PARTYMEMBER]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IgnoresFakeGuild]		= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;
	aivar[AIV_MagicUser]			= MAGIC_ALWAYS;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- daily routine --------
	daily_routine = Rtn_Start_4390;
};

func void Rtn_Start_4390()
{
	TA_Read_Bookstand(08, 00, 23, 00, "SHIP_IN_22");
	TA_Sleep(23, 00, 08, 00, "SHIP_IN_04");
};
