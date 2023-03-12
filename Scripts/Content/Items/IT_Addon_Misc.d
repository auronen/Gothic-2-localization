// ---------------------------------------------------------------------
//	Item Werte
// ---------------------------------------------------------------------
const int Value_Goldnugget = 18;
const int Value_WhitePearl = 120;
const int Value_Addon_Joint_01 = 60;
// ---------------------------------------------------------------------
//	Goldbrocken
// ---------------------------------------------------------------------
instance ItMi_GoldNugget_Addon(C_Item)
{
	name						= "Goldbrocken";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_GoldNugget_01.3ds";
	material					= MAT_STONE;

	value						= Value_Goldnugget;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_MISC2_STANDARD;
};

// ---------------------------------------------------------------------
//	Weiße Perle
// ---------------------------------------------------------------------
instance ItMi_Addon_WhitePearl(C_Item)
{
	name						= "Perle";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_WhitePearl_01.3ds";
	material					= MAT_STONE;

	value						= Value_WhitePearl;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_MISC_STANDARD;
};

// ---------------------------------------------------------------------
//	Grüner Novize
// ---------------------------------------------------------------------
instance ItMi_Addon_Joint_01(C_Item)
{
	name						= "Grüner Novize";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Joint_US.3ds";
	material					= MAT_LEATHER;

	scemeName					= "JOINT";
	on_state[0]					= Use_Addon_Joint_01;

	value						= Value_Addon_Joint_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
};

var int FirstJoint;
func void Use_Addon_Joint_01()
{
	if (Npc_IsPlayer(self))
	{
		if (FirstJoint == FALSE)
		{
			FirstJoint = TRUE;
			B_GivePlayerXP(5);
		};

		Wld_PlayEffect("SLOW_TIME", self, self, 0, 0, 0, FALSE);
	};
};

//****************************************************************************
//				Baltrams Lieferung von Akil
//			---------------------------------------------
//****************************************************************************
instance ItMi_BaltramPaket(C_Item)
{
	name						= "Baltram's Lieferung";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Packet.3ds";
	material					= MAT_LEATHER;

	value						= 200;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Ein schweres Paket";							count[2] = 0;
	text[3]						= "voller guter Sachen";						count[3] = 0;
	text[4]						= "vom Bauern Akil";							count[4] = 0;
};

//****************************************************************************
//				Baltrams Lieferung für Skip
//			---------------------------------------------
//****************************************************************************
instance ItMi_Packet_Baltram4Skip_Addon(C_Item)
{
	name						= "Paket für Skip";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Packet.3ds";
	material					= MAT_LEATHER;

	value						= 200;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Dieses schwere Paket";						count[2] = 0;
	text[3]						= "voller guter Sachen";						count[3] = 0;
	text[4]						= "ist für den Piraten Skip bestimmt";			count[4] = 0;
};

/******************************************************************************************/
instance ItMi_BromorsGeld_Addon(C_Item)
{
	name						= "Bromors Goldene Schale";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItMi_GoldChalice.3DS";
	material					= MAT_METAL;

	value						= Value_Nugget;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Name 'Bromor' ist mit";					count[2] = 0;
	text[3]						= "einem scharfen Gegenstand in den";			count[3] = 0;
	text[4]						= "Boden der Schale geritzt worden.";			count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSe_ADDON_CavalornsBeutel(C_Item)
{
	name						= "Cavalorns Lederbeutel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_CavalornsBeutel;

	value						= Value_Nugget;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "Am Bund hängt ein Schild";					count[1] = 0;
	text[2]						= "mit dem Namen 'Cavalorn'";					count[2] = 0;
	text[3]						= "1 Brocken Erz befinden sich darin";			count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_CavalornsBeutel()
{
	CreateInvItems(hero, ItMi_Nugget, 1);
	Print(PRINT_FoundOreNugget);
	SC_OpenedCavalornsBeutel = TRUE;
	Log_CreateTopic(TOPIC_Addon_CavalornTheHut, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_CavalornTheHut, LOG_RUNNING);
	B_LogEntry(TOPIC_Addon_CavalornTheHut, TOPIC_Addon_CavalornTheHut_2);
};

//**************************************
//		Diverser Kleinkram
//**************************************
instance ItMi_Skull(C_Item)
{
	name						= "Schädel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "DT_SKELETON_V01_HEAD.3ds";
	material					= MAT_LEATHER;

	value						= 10;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// 				INEXTREMO ITEMS
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------

instance ItMi_IECello(C_Item)
{
	name						= "Cello";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_Cello.3ds";
	material					= MAT_WOOD;

	scemeName					= "CELLO";
	on_state[0]					= Use_Cello;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_Cello()
{
};

instance ItMi_IECelloBow(C_Item)
{
	name						= "CelloBow";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_CelloBow.3ds";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

instance ItMi_IEDrum(C_Item)
{
	name						= "Drum";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_Drum.3ds";
	material					= MAT_WOOD;

	scemeName					= "PAUKE";
	on_state[0]					= Use_Drum;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_Drum()
{
};

instance ItMi_IEDrumScheit(C_Item)
{
	name						= "Drumscheit";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_Drumscheit.3ds";
	material					= MAT_WOOD;

	scemeName					= "DRUMSCHEIT";
	on_state[0]					= Use_Drumscheit;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_Drumscheit()
{
};

instance ItMi_IEDrumStick(C_Item)
{
	name						= "DrumStick";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_DrumStick.3ds";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

instance ItMi_IEDudelBlau(C_Item)
{
	name						= "Blauer Dudelsack";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_DudelBlau.3ds";
	material					= MAT_WOOD;

	scemeName					= "DUDEL";
	on_state[0]					= Use_Dudel;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_Dudel()
{
};

instance ItMi_IEDudelGelb(C_Item)
{
	name						= "Gelber Dudelsack";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_DudelGelb.3ds";
	material					= MAT_WOOD;

	scemeName					= "DUDEL";
	on_state[0]					= Use_Dudel;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

instance ItMi_IEHarfe(C_Item)
{
	name						= "Harfe";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_Harfe.3ds";
	material					= MAT_WOOD;

	scemeName					= "HARFE";
	on_state[0]					= Use_Harfe;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_Harfe()
{
};

instance ItMi_IELaute(C_Item)
{
	name						= "Laute";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_Laute.3ds";
	material					= MAT_WOOD;

	scemeName					= "IELAUTE";
	on_state[0]					= Use_Laute;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_Laute()
{
};

//****************************************************************************
//				Lennar'S Dietrich Paket
//			---------------------------------------------
//****************************************************************************
instance ItMi_Addon_Lennar_Paket(C_Item)
{
	name						= "Klimperndes Paket";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Packet.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_LennarPaket;

	value						= 300;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Da sind Dietriche drin";						count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "Viele Dietriche";							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_LennarPaket()
{
	B_PlayerFindItem(ItKE_lockpick, Lennar_picklock_amount);
	Snd_Play("Geldbeutel");

	LennarPaket_Open = TRUE;
};

instance ItMi_Zeitspalt_Addon(C_Item)
{
	name						= "Schwarzes Erz";

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItMi_Zeitspalt_Addon.3DS";
	material					= MAT_STONE;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_Zeitspalt_Addon;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Wirkung unbekannt";							count[3] = 0;
	INV_ZBIAS					= INVCAM_ENTF_MISC_STANDARD;
};

func void Use_Zeitspalt_Addon()
{
	if (Npc_IsPlayer(self))
	{
		Wld_PlayEffect("spellFX_BELIARSRAGE", self, self, 0, 0, 0, FALSE);

		// FIXME_Nico: DropUnconscious (DropDead funktioniert bereits)
		// Npc_ChangeAttribute(self, ATR_MANA, -self.attribute[ATR_MANA]);
		// Npc_ChangeAttribute(self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS] + 2);
		// Bereits laufenden Effekt beenden, damit die Kamera nicht ausrastet...
		// (beim Wechsel immer noch starker Morph-Effekt, aber nicht mehr andauernd)
		Wld_StopEffect("SLOW_MOTION");
		Wld_PlayEffect("SLOW_MOTION", self, self, 0, 0, 0, FALSE);
	};
};
