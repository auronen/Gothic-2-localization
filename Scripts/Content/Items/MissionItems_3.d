//********************************************
//	Das Auge Innos (Das reparierte Auge, mit dem man mit den Drachen Spricht)
//********************************************

const int AM_EyeProtEdge = 10;
const int AM_EyeProtPoint = 10;
const int AM_EyeProtMage = 20;
const int AM_EyeProtFire = 30;

// -------------------------------------------

instance ItMi_InnosEye_MIS(C_ITEM)
{
	name						= "Auge Innos";

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET | ITEM_MISSION;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItMi_InnosEye_MIS.3DS";
	material					= MAT_STONE;

	on_equip					= Equip_InnosEye;
	on_unequip					= UnEquip_InnosEye;

	value						= 0;

	description					= name;
	text[0]						= "Das Auge pulsiert voller Energie";			count[0] = 0;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
};

func void Equip_InnosEye()
{
	Wld_PlayEffect("spellFX_Innoseye", self, self, 0, 0, 0, FALSE);
	Wld_PlayEffect("spellFX_LIGHTSTAR_RED", self, self, 0, 0, 0, FALSE);
	Wld_PlayEffect("FX_EarthQuake", self, self, 0, 0, 0, FALSE);
	AI_PlayAni(self, "T_MAGRUN_2_HEASHOOT");
	AI_StandUp(self);
	Snd_Play("SFX_INNOSEYE");

	self.protection [PROT_EDGE] += AM_EyeProtEdge;
	self.protection [PROT_BLUNT] += AM_EyeProtEdge;
	self.protection [PROT_POINT] += AM_EyeProtPoint;
	self.protection [PROT_FIRE] += AM_EyeProtFire;
	self.protection [PROT_MAGIC] += AM_EyeProtMage;

	PrintScreen("", -1, -1, FONT_Screen, 0);
};

func void UnEquip_InnosEye()
{
	self.protection [PROT_EDGE] -= AM_EyeProtEdge;
	self.protection [PROT_BLUNT] -= AM_EyeProtEdge;
	self.protection [PROT_POINT] -= AM_EyeProtPoint;
	self.protection [PROT_FIRE] -= AM_EyeProtFire;
	self.protection [PROT_MAGIC] -= AM_EyeProtMage;
};

instance ItMi_InnosEye_Discharged_Mis(C_Item)
{
	name						= "Auge Innos";

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET | ITEM_MISSION;

	visual						= "ItMi_InnosEye_MIS.3DS";
	material					= MAT_STONE;

	on_equip					= Equip_ItMi_InnosEye_Discharged_Mis;

	value						= 0;

	description					= name;
	text[0]						= "Das Auge ist matt und ohne Glanz";			count[0] = 0;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
};

func void Equip_ItMi_InnosEye_Discharged_Mis()
{
	Wld_PlayEffect("spellFX_Fear", self, self, 0, 0, 0, FALSE);
	Snd_Play("MFX_FEAR_CAST");
};

instance ItMi_InnosEye_Broken_Mis(C_Item)
{
	name						= "Auge Innos";

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET | ITEM_MISSION;

	visual						= "ItMi_InnosEye_MIS.3DS";
	material					= MAT_STONE;

	on_equip					= Equip_ItMi_InnosEye_Broken_Mis;

	value						= 0;

	description					= name;
	text[0]						= TEXT_Innoseye_Setting;						count[0] = 0;
	text[1]						= TEXT_Innoseye_Gem;							count[1] = 0;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
};

func void Equip_ItMi_InnosEye_Broken_Mis()
{
	Wld_PlayEffect("spellFX_Fear", self, self, 0, 0, 0, FALSE);
	Snd_Play("MFX_FEAR_CAST");
};

//**********************************************************************************
//	Ermächtigungsschreiben für SC für Pyrokar, das Auge Innos rauszurücken.
// ----------------------------------------------------------------------------------

instance ItWr_PermissionToWearInnosEye_MIS(C_Item)
{
	name						= "Ermächtigungsschreiben";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_PermissionToWearInnosEye;

	value						= 0;

	description					= "Ermächtigungsschreiben für Pyrokar";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string PermissionToWearInnosEye_1 = "Dem Überbringer dieses Schreiben ist Einlass in die heiligen Hallen des Klosters zu gewähren.";
const string PermissionToWearInnosEye_2 = "Seinen Wünschen, hinsichtlich der Inbesitznahme des Auges Innos ist unverzüglich nachzukommen";
const string PermissionToWearInnosEye_3 = "Diese Anweisungen sind durch Kraft meines Amtes, als Generalbevollmächtigter der Insel und des Königs, sowie durch den Beschluss über die Zweiteilung der Kirche Innos, aus dem Jahre 2 des Feuers, als berechtigt zur Kenntnis zu nehmen.";
const string PermissionToWearInnosEye_4 = "Ich werde hierzu keine weiteren Erklärungen abgeben und erwarte, dass meinen Anordnungen Folge geleistet wird.";
const string PermissionToWearInnosEye_5 = "Innos schütze den König";
const string PermissionToWearInnosEye_6 = "     Lord Hagen";
func void Use_PermissionToWearInnosEye()
{
	var int nDocID;

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, PermissionToWearInnosEye_1);
				Doc_PrintLines	(nDocID, 0, PermissionToWearInnosEye_2);
				Doc_PrintLines	(nDocID, 0, PermissionToWearInnosEye_3);
				Doc_PrintLines	(nDocID, 0, PermissionToWearInnosEye_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PermissionToWearInnosEye_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PermissionToWearInnosEye_6);
	Doc_Show(nDocID);
};

//**********************************************************************************
//	ItWr_XardasBookForPyrokar_Mis
//**********************************************************************************

instance ItWr_XardasBookForPyrokar_Mis(C_ITEM)
{
	name						= "Die Hallen von Irdorath";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_05.3ds"; // BUCH VARIATIONEN: ItWr_Book_01.3DS, ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_XardasBookForPyrokar;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_XardasBookForPyrokar()
{
	Print(PRINT_IrdorathBookDoesntOpen);
	Wld_PlayEffect("spellFX_Fear", self, self, 0, 0, 0, FALSE);
	Snd_Play("MFX_FEAR_CAST");
};

//**********************************************************************************
//	ItKe_CHEST_SEKOB_XARDASBOOK_MIS Xardas Schlüssel für die Truhe auf Sekobs Hof
//**********************************************************************************

instance ItKe_CHEST_SEKOB_XARDASBOOK_MIS(C_Item)
{
	name						= "Xardas Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= Value_Key_02;

	description					= name;
	text[0]						= "für die Truhe auf Sekobs Bauernhof";			count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//**********************************************************************************
//	ItWr_CorneliusTagebuch_Mis
//**********************************************************************************

instance ItWr_CorneliusTagebuch_Mis(C_ITEM)
{
	name						= "Tagebuch";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_01.3ds"; // BUCH VARIATIONEN: ItWr_Book_01.3DS, ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseCorneliusTagebuch;

	value						= 0;

	description					= name;
	text[0]						= "Das Tagebuch von Cornelius";					count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string CorneliusTagebuch_1 = "Wenn Larius so weitermacht, werde ich mich nach einer anderen Stelle umsehen.";
const string CorneliusTagebuch_2 = "Heute Nacht ist mir etwas seltsames passiert. Einer dieser Männer in den schwarzen Kapuzenmänteln, von denen man immer hört, hat mich in meinem Haus aufgesucht. Ich war gar nicht aufgeregt, obwohl man sich nur Schreckliches von ihnen erzählt. Die Macht, die diese Männer ausstrahlen war fast körperlich zu spüren. Die Stimme dagegen, war sehr ruhig und vertrauenserweckend.";
const string CorneliusTagebuch_3 = "Er hat mir 20000 Goldstücke geboten, wenn ich dafür sorge, dass einer der Söldner verurteilt wird. Ich würde schon merken, wenn es soweit ist.";
const string CorneliusTagebuch_4 = "Ich habe natürlich sofort zugestimmt, die Söldner haben es eh verdient. Wenn sie nicht gekommen wären, würde hier alles zu meiner Zufriedenheit verlaufen. Die Goldstücke werden mir einen ruhigen Lebensabend garantieren.";
const string CorneliusTagebuch_5 = "Es ist soweit, sie haben einer dieser Söldner geschnappt. Es sollte ein Kinderspiel sein, mein Wort zu halten.";
func void UseCorneliusTagebuch()
{
	Cornelius_IsLiar = TRUE;
	B_LogEntry(TOPIC_RESCUEBENNET, TOPIC_RESCUEBENNET_4);

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages
	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0); // VARIATIONEN: BOOK_BROWN_L.tga, BOOK_MAGE_L.tga, BOOK_RED_L.tga
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0); // VARIATIONEN: BOOK_BROWN_R.tga, BOOK_MAGE_R.tga, BOOK_RED_R.tga

	// 1.Seite
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, CorneliusTagebuch_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, CorneliusTagebuch_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, CorneliusTagebuch_3);
				Doc_PrintLines	(nDocID, 1, CorneliusTagebuch_4);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, CorneliusTagebuch_5);
	Doc_Show(nDocID);

	PrintScreen("", -1, -1, FONT_Screen, 0);
};

//**********************************************************************************
//	ITWR_DementorObsessionBook_MIS // Joly: DementorBuch, der Bessenheit, Ein NSC trägt dieses Buch mit sich, wenn er von einem Dementor kurzzeitig übernommen wurde.)
//**********************************************************************************

instance ITWR_DementorObsessionBook_MIS(C_ITEM)
{
	name						= "Almanach der Bessenen";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItWr_Book_02_05.3ds"; // BUCH VARIATIONEN: ItWr_Book_01.3DS, ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_DementorObsessionBook;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string DementorObsessionBook_1 = "edef Kon dirandorix";
const string DementorObsessionBook_2 = "in Sparady bell ";
const string DementorObsessionBook_3 = "el utoy";
const string DementorObsessionBook_4 = " Kho ray xaondron";
const string DementorObsessionBook_5 = "em piratoram endro";
const string DementorObsessionBook_6 = "          VINO";
const string DementorObsessionBook_7 = "FERNANDO";
const string DementorObsessionBook_8 = "     MALAK";
const string DementorObsessionBook_9 = "BROMOR";
const string DementorObsessionBook_10 = "          ENGROM";
const string DementorObsessionBook_11 = "     RANDOLPH";
const string DementorObsessionBook_12 = "          SEKOB";
const string DementorObsessionBook_13 = "     BRUTUS";
func void Use_DementorObsessionBook()
{
	Wld_PlayEffect("spellFX_Fear", hero, hero, 0, 0, 0, FALSE);
	Snd_Play("MFX_FEAR_CAST");
	SC_ObsessionCounter = 100;
	B_SCIsObsessed(hero);

	if (hero.guild == GIL_KDF)
	{
		var int nDocID;

		nDocID = Doc_Create(); // DocManager
		Doc_SetPages(nDocID, 2); // wieviel Pages
		Doc_SetPage(nDocID, 0, "BOOK_MAGE_L.tga", 0); // VARIATIONEN: BOOK_BROWN_L.tga, BOOK_MAGE_L.tga, BOOK_RED_L.tga
		Doc_SetPage(nDocID, 1, "BOOK_MAGE_R.tga", 0); // VARIATIONEN: BOOK_BROWN_R.tga, BOOK_MAGE_R.tga, BOOK_RED_R.tga
		// 1.Seite
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLines	(nDocID, 0, DementorObsessionBook_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, DementorObsessionBook_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, DementorObsessionBook_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, DementorObsessionBook_4);
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, DementorObsessionBook_5);
		// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_SetFont(nDocID, 1, FONT_BookHeadline); // -1 -> all pages
				Doc_SetFont(nDocID, 1, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");

		if (Kapitel >= 3)
		{
				Doc_PrintLine	(nDocID, 1, DementorObsessionBook_6);
				Doc_PrintLine	(nDocID, 1, DementorObsessionBook_7);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, DementorObsessionBook_8);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, DementorObsessionBook_9);
		};

		if (Kapitel >= 4)
		{
				Doc_PrintLine	(nDocID, 1, DementorObsessionBook_10);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, DementorObsessionBook_11);
				Doc_PrintLine	(nDocID, 1, "");
		};

		if (Kapitel >= 5)
		{
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, DementorObsessionBook_12);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, DementorObsessionBook_13);
				Doc_PrintLine	(nDocID, 1, "");
		};

		Doc_Show(nDocID);
	};
};

//**********************************************************************************
//	ItWr_PyrokarsObsessionList
//**********************************************************************************

instance ItWr_PyrokarsObsessionList(C_Item)
{
	name						= "Pyrokars magischer Brief";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_02.3DS"; // VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_PyrokarsObsessionList;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string PyrokarsObsessionList_1 = "Die Besessenen";
const string PyrokarsObsessionList_2 = "FERNANDO";
const string PyrokarsObsessionList_3 = "VINO";
const string PyrokarsObsessionList_4 = "MALAK";
const string PyrokarsObsessionList_5 = "BROMOR";
const string PyrokarsObsessionList_6 = "ENGROM";
const string PyrokarsObsessionList_7 = "RANDOLPH";
const string PyrokarsObsessionList_8 = "SEKOB";
const string PyrokarsObsessionList_9 = "BRUTUS";
func void Use_PyrokarsObsessionList()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, PyrokarsObsessionList_1);
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages

	if (Kapitel >= 3)
	{
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PyrokarsObsessionList_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PyrokarsObsessionList_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PyrokarsObsessionList_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PyrokarsObsessionList_5);
	};

	if (Kapitel >= 4)
	{
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PyrokarsObsessionList_6);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PyrokarsObsessionList_7);
	};

	if (Kapitel >= 5)
	{
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PyrokarsObsessionList_8);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PyrokarsObsessionList_9);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
	};

	Doc_Show(nDocID);
};

/******************************************************************************************/
//	Heiltrank für Hilda //
/******************************************************************************************/
instance ItPo_HealHilda_MIS(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI | ITEM_MISSION;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItMi_Flask.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= Use_HealHilda;

	value						= Value_HpEssenz;

	description					= "Heilung des schwarzen Fiebers";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Essenz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpEssenz;
};

func void Use_HealHilda()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Essenz);
};

// *****************************************************
// 		Maleths verlorener Gehstock
// *****************************************************
instance ItMw_MalethsGehstock_MIS(C_Item)
{
	name						= "Gehstock";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "Itmw_008_1h_pole_01.3ds";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_VLKMace;

	damageTotal					= Damage_VLKMace;
	damageType					= DAM_BLUNT;
	range						= RANGE_VLKMace;

	value						= Value_VLKMace;

	description					= name;
	text[0]						= "An seinem Kopfende";							count[0] = 0;
	text[1]						= "ist der Buchstabe `M` eingeschnitzt";		count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// *****************************************************
// 		Maleths BanditenGeldbeutel
// *****************************************************

instance ItMi_MalethsBanditGold(C_Item)
{
	name						= "Ein Beutel voll Gold!";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_METAL;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_MalethsBanditGold;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_MalethsBanditGold()
{
	B_PlayerFindItem(ItMi_Gold, 300);
};

// *****************************************************
// 		MoleratFett für "die Winde klemmt"
// *****************************************************

instance ItMi_Moleratlubric_MIS(C_Item)
{
	name						= "Moleratfett";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Moleratlubric.3ds";
	material					= MAT_WOOD;

	value						= Value_Pitch;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

//*****************************************************
//	Babos Brief
//*****************************************************

instance ItWr_BabosLetter_MIS(C_Item)
{
	name						= "Brief an Babo";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_BabosLetter;

	value						= 0;

	description					= "Brief an Babo.";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string BabosLetter_1 = "Lieber Babo!";
const string BabosLetter_2 = "Du wunderst dich bestimmt, wie wir dazu kommen dir diesen Brief zu schreiben. Wir haben alles Geld zusammengelegt und den Meister Marlas gebeten diese Zeilen hier zu schreiben. Also wir wünschen dir viel Glück auf deinem weiteren Weg und hoffen, dass du deine Freunde nicht vergisst. Als Abschiedsgeschenk haben wir die noch ein Bild eingepackt, damit du immer an uns denkst und dir die Nächte im Kloster nicht zu lang werden.";
const string BabosLetter_3 = "Viel Erfolg im Kloster und viel Spass mit dem Bild.";
const string BabosLetter_4 = "Feht und Bonka.";
func void Use_BabosLetter()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, BabosLetter_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, BabosLetter_2);
				Doc_PrintLines	(nDocID, 0, BabosLetter_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, BabosLetter_4);

	Doc_Show(nDocID);
};

//********************************************************
//	BabosPinup
//********************************************************

instance ItWr_BabosPinUp_MIS(C_Item)
{
	name						= "Frauenzeichnung";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_BabosPinUp;

	value						= 0;

	description					= "Ein Bild von einer nackten Frau";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_BabosPinUp()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "Map_Pinup.TGA", 0);
	Doc_Show(nDocID);
};

//********************************************************
//	BabosDocs
//********************************************************

instance ItWr_BabosDocs_MIS(C_Item)
{
	name						= "Ein Bündel Papiere";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_02.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_BabosDocs;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Mehrere zusammengerollte";					count[2] = 0;
	text[3]						= "Dokumente";									count[3] = 0;
};

func void Use_BabosDocs()
{
	BaboSDocsOpen = TRUE;

	CreateInvItems(self, ItWr_BabosLetter_MIS, 1);
	CreateInvItems(self, ItWr_BabosPinUp_MIS, 1);
};

//*************************************************************
//	igaraz Schlüssel
//*************************************************************

instance ItKe_IgarazChest_Mis(C_Item)
{
	name						= "Truhenschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Schlüssel für";							count[2] = 0;
	text[3]						= "die Truhe von Igaraz";						count[3] = 0;
};

//**********************************************************************************
//	ItWr_Astronomy_Mis
//**********************************************************************************

instance ItWr_Astronomy_Mis(C_ITEM)
{
	name						= "Die göttliche Kraft der Gestirne";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_02.3ds"; // BUCH VARIATIONEN: ItWr_Book_01.3DS, ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Astronomy;

	value						= 400;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

var int Astronomy_once;

const string Astronomy_1 = "...wenn nun aber die Kraft des Ochsen sich vereinigt mit den Prinzipien des Kriegers, so seien alle gewarnt vor den Ereignissen, die da kommen mögen.";
const string Astronomy_2 = "Die unbändige Kraft des Ochsen und die Zielstrebigkeit des Kriegers ist in der Lage das Uralte Gleichgewicht der Mächte zu erschüttern. Die kosmische Grenze zwischen den Dimension wird schwächer, so schwach, dass die Schattenkreaturen Beliars auf ein leichtes in unsere Welt überwechseln können. ";
const string Astronomy_3 = "Was so etwas bedeutet, zeigen uns die Kriege der vorderen Zeit, als das Band zwischen den Welten noch stärker war. Die Schergen des Bösen brachten Tod und Zerstörung über die Welt und nur mit der Hilfe Innos und seines Erwählten war es den Menschen möglich das Unheil zu besiegen. ";
const string Astronomy_4 = "Wenn es jemals wieder soweit kommen mag, dann mag Innos uns schützen, denn einen Erwählten Innos hat es schon seit über hundert Jehren nicht mehr gegeben.";
func void Use_Astronomy()
{
	if (Astronomy_once == FALSE)
	{
		B_RaiseAttribute(self, ATR_MANA_MAX, 2);
		Print(PRINT_ReadAstronomy);
		Astronomy_once = TRUE;
	};

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0); // VARIATIONEN: BOOK_BROWN_L.tga, BOOK_MAGE_L.tga, BOOK_RED_L.tga
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0); // VARIATIONEN: BOOK_BROWN_R.tga, BOOK_MAGE_R.tga, BOOK_RED_R.tga

	// 1.Seite
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Astronomy_1);
				Doc_PrintLines	(nDocID, 0, Astronomy_2);
	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Astronomy_3);
				Doc_PrintLines	(nDocID, 1, Astronomy_4);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, "");
	Doc_Show(nDocID);
};

///////////////////////
// Besessenheit heilen.
///////////////////////

var int SC_ObsessionTimes;

instance ItPo_HealObsession_MIS(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI | ITEM_MISSION;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItMi_Flask.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= Use_HealObsession;

	value						= Value_HpEssenz;

	description					= "Heilung der Besessenheit";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Essenz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpEssenz;
};

func void Use_HealObsession()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Essenz);
	SC_ObsessionTimes = SC_ObsessionTimes + 1;
	B_ClearSCObsession(self);
	Wld_PlayEffect("spellFX_LIGHTSTAR_VIOLET", hero, hero, 0, 0, 0, FALSE);
	Snd_Play("SFX_HealObsession");
};

//************************************************
//	Die Golem Truhe
//************************************************

instance ItSe_Golemchest_Mis(C_Item)
{
	name						= "Lederbeutel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_METAL;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_GolemChest;

	value						= 0;

	description					= "Ein Lederbeutel";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Beutel ist voller Münzen";				count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_GolemChest()
{
	CreateInvItems(hero, ItMi_Gold, 50);
	Print(PRINT_FoundGold50);
	Print(PRINT_FoundRing);
	CreateInvItems(hero, ItRi_Prot_Total_02, 1);
	Snd_Play("Geldbeutel");
};

//////////////////////////////////////////////////////////////////////////////
//
//	ItWr_ShatteredGolem_MIS
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_ShatteredGolem_MIS(C_Item)
{
	name						= "sehr alte Karte"; //

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_ShatteredGolem_Mis;

	value						= 150;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_ShatteredGolem_Mis()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_ShatteredGolem_MIS);
	};

	var int Document;
	Document = Doc_CreateMap();
	Doc_SetPages(Document, 1);
	Doc_SetPage(Document, 0, "Map_NewWorld_ShatteredGolem.tga", TRUE); // TRUE = scale to fullscreen
	Doc_SetLevel(Document, "NewWorld\NewWorld.zen");
	Doc_SetLevelCoords(Document, -28000, 50500, 95500, -42500);
	Doc_Show(Document);
};

//**********************************************************************************
//	Diegos Brief an den Richter
// ----------------------------------------------------------------------------------

instance ItWr_DiegosLetter_MIS(C_Item)
{
	name						= "Brief von Diego";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_DiegosLetter_Mis;

	value						= 0;

	description					= "Diegos Brief an Gerbrandt.";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string DiegosLetter_Mis_1 = "Gerbrandt, ";
const string DiegosLetter_Mis_2 = "du hättest mich lieber töten sollen. ";
const string DiegosLetter_Mis_3 = "Ich bin wieder in der Stadt und auf dem Weg zu dir. Wenn ich dich finde, werde ich dir deinen fetten Wanst aufschneiden. Du kennst mich lange genug um zu wissen, dass ich mich nicht ungestraft reinlegen lasse.";
const string DiegosLetter_Mis_4 = "Als du mich damals hast in die Barriere werfen lassen, hast du sicherlich geglaubt mich für immer los zu sein. Du hast dich geirrt. ";
const string DiegosLetter_Mis_5 = "Ich bin bekommen mir das zu holen, was mir zusteht. ";
const string DiegosLetter_Mis_6 = "Deine einzige Chance am leben zu bleiben ist, dich aus deinem Haus zu verpissen und mir deine Geschäfte zu überlassen. Dann sind wir quitt.";
const string DiegosLetter_Mis_7 = "Diego";
func void Use_DiegosLetter_Mis()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, DiegosLetter_Mis_1);
				Doc_PrintLines	(nDocID, 0, DiegosLetter_Mis_2);
				Doc_PrintLines	(nDocID, 0, DiegosLetter_Mis_3);
				Doc_PrintLines	(nDocID, 0, DiegosLetter_Mis_4);
				Doc_PrintLines	(nDocID, 0, DiegosLetter_Mis_5);
				Doc_PrintLines	(nDocID, 0, DiegosLetter_Mis_6);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, DiegosLetter_Mis_7);
	Doc_Show(nDocID);
};

//*************************************************************************************
//		Diegos Goldschatz
//*************************************************************************************

instance ItSe_DiegosTreasure_Mis(C_Item)
{
	name						= "Prallgefüllter Lederbeutel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_METAL;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_DiegosTreasure;

	value						= 0;

	description					= "Diegos alter Lederbeutel";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_DiegosTreasure()
{
	OpenedDiegosBag = TRUE;

	B_PlayerFindItem(ItMi_Gold, DiegosTreasure);
};

//*************************************************************************************
//		Ulthars heilendes Wasser zum reinigen der Wegschreine (nur PAL)
//*************************************************************************************

instance ItMi_UltharsHolyWater_Mis(C_Item)
{
	name						= "Ulthars heiliges Wasser";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItMi_HolyWater.3ds";
	material					= MAT_WOOD;

	value						= Value_HolyWater;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//**********************************************************************************
//	ItWr_MinenAnteil_Mis
// ----------------------------------------------------------------------------------
var int ItWr_MinenAnteil_Mis_OneTime;
instance ItWr_MinenAnteil_Mis(C_Item)
{
	name						= "Erzminenanteil Khorinis";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_MinenAnteil_Mis;

	value						= Value_HpElixier;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string MinenAnteil_Mis_1 = "Erzminenanteil";
const string MinenAnteil_Mis_2 = "Dem Eigentümer dieses Schreibens ist es, gemäss des königlichen Erlassess zur Gewinnung von Vermögen aus Reichsgrund, erlaubt, sich als Prospektor auf königlichem Grund und Boden zu verdingen.";
const string MinenAnteil_Mis_3 = "Seine Schürftätigkeiten haben sich auf das Gebiet einer königlichen Reichskleinparzelle zu beschränken.";
const string MinenAnteil_Mis_4 = "Reichskleinparzellen sind durch den Erlass zur Größe von Schürfgrund auf eine Fläche von 16 Rechtschritt, in der flächigen, und nicht mehr als 3 Schritt in der steigenden Ausdehnung definiert.";
const string MinenAnteil_Mis_5 = "Der Reichsprospektor ist von allen Pflichten bezüglich des freien Zugangs und des Schutzes der Schürfparzellen befreit.";
const string MinenAnteil_Mis_6 = "Ist es dem Pächter nicht möglich die fälligen Abgaben fristengerecht zu entgelten, fallen alle Rechte an Grund und Boden zurück an das Reich.";
const string MinenAnteil_Mis_7 = "     gezeichnet";
const string MinenAnteil_Mis_8 = "     königlicher Prospektor";
const string MinenAnteil_Mis_9 = "          Salandril";
func void Use_MinenAnteil_Mis()
{
	var int nDocID;

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID, 0, MinenAnteil_Mis_1);
				Doc_SetFont(nDocID, 0, FONT_Book);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, MinenAnteil_Mis_2);
				Doc_PrintLines	(nDocID, 0, MinenAnteil_Mis_3);
				Doc_PrintLines	(nDocID, 0, MinenAnteil_Mis_4);
				Doc_PrintLines	(nDocID, 0, MinenAnteil_Mis_5);
				Doc_PrintLines	(nDocID, 0, MinenAnteil_Mis_6);
				Doc_PrintLine	(nDocID, 0, MinenAnteil_Mis_7);
				Doc_PrintLine	(nDocID, 0, MinenAnteil_Mis_8);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, MinenAnteil_Mis_9);
	Doc_Show(nDocID);

	SC_KnowsProspektorSalandril = TRUE;

	if (ItWr_MinenAnteil_Mis_OneTime == FALSE)
	{
		B_LogEntry(TOPIC_MinenAnteile, TOPIC_MinenAnteile_1);

		if (Npc_IsDead(Salandril))
		{
			B_LogEntry(TOPIC_MinenAnteile, TOPIC_MinenAnteile_2);
		};

		ItWr_MinenAnteil_Mis_OneTime = TRUE;
	};
};

//**********************************************************************************
//	Schutzamulett gegen den Schwarzen Blick
//**********************************************************************************

instance ItAm_Prot_BlackEye_Mis(C_Item)
{
	name						= "Seelenruf-Amulett";

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET | ITEM_MISSION;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItAm_Hp_Mana_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	value						= Value_Am_HpMana;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Schützt vor dem Schwarzen Blick";			count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
};

//**********************************************************************************
//	Gestein aus gesegneter Erde für das Schutzamulett gegen den Schwarzen Blick
//**********************************************************************************

instance ItMi_KarrasBlessedStone_Mis(C_Item)
{
	name						= "Gestein aus gesegneter Erde";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItMi_Rockcrystal.3ds";
	visual_skin					= 0;
	material					= MAT_STONE;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//**********************************************************************************
//	Komprobrief für Lee
// ----------------------------------------------------------------------------------

instance ItWr_RichterKomproBrief_MIS(C_Item)
{
	name						= "Auftrag des Richters";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_02.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_RichterKomproBrief;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string RichterKomproBrief_1 = "Morgahard, du Nichtsnutz! Führe meinen Befehl endlich aus, sonst werde ich andere Seiten aufziehen und ihr werdet allesamt verhaftet.";
const string RichterKomproBrief_2 = "Die Sache steigt morgen Nacht. Larius wird schon misstrauisch. ";
const string RichterKomproBrief_3 = "Wenn wir ihm das Geld nicht jetzt aus der Tasche ziehen, gibt es vielleicht nicht noch eine Gelegenheit dazu. Ich werde dafür sorgen, dass ihr ihn heute abend auf dem Marktplatz antreffen werdet. ";
const string RichterKomproBrief_4 = "Macht aber kein Aufsehen, sonst wird euch die Miliz niederprügeln, bevor ihr noch wisst, was los ist.";
const string RichterKomproBrief_5 = "Nur so nebenbei: Wenn er dabei umkommen sollte, habe ich auch nichts dagegen.";
const string RichterKomproBrief_6 = "          Oberster Richter und ";
const string RichterKomproBrief_7 = "          königlicher Sekretär";
func void Use_RichterKomproBrief()
{
	SCKnowsRichterKomproBrief = TRUE;

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, RichterKomproBrief_1);
				Doc_PrintLines	(nDocID, 0, RichterKomproBrief_2);
				Doc_PrintLines	(nDocID, 0, RichterKomproBrief_3);
				Doc_PrintLines	(nDocID, 0, RichterKomproBrief_4);
				Doc_PrintLines	(nDocID, 0, RichterKomproBrief_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, RichterKomproBrief_6);
				Doc_PrintLine	(nDocID, 0, RichterKomproBrief_7);
				Doc_PrintLine	(nDocID, 0, "");

	Doc_Show(nDocID);
};

//**********************************************************************************
//	ItWr_MorgahardTip
// ----------------------------------------------------------------------------------

instance ItWr_MorgahardTip(C_Item)
{
	name						= "Brief";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_MorgahardTip;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string MorgahardTip_1 = "Ich bin schon mal vorraus gegangen. Ich hoffe, wir werden uns alle in etwas ruhigeren Zeiten wieder sehen.";
const string MorgahardTip_2 = "Keine Bange, Jungs. Wenn alle Stricke reißen, werde ich Onar bitten, die Sache für uns zu erledigen.";
const string MorgahardTip_3 = "Es wird schon alles gut gehen.";
const string MorgahardTip_4 = "     M.";
func void Use_MorgahardTip()
{
	var int nDocID;

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_SetFont(nDocID, 0, FONT_Book);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, MorgahardTip_1);
				Doc_PrintLines	(nDocID, 0, MorgahardTip_2);
				Doc_PrintLines	(nDocID, 0, MorgahardTip_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, MorgahardTip_4);
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//////////////////////////////////////////////////////////////////////////////
//
//	MAP der Schreine
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_Map_Shrine_MIS(C_Item)
{
	name						= "Karte der heiligen Schreine"; //

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Map_NewWorld_Shrine_MIS;

	value						= 200;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_Map_NewWorld_Shrine_MIS()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_Shrine_MIS);
	};

	var int Document;
	Document = Doc_CreateMap();
	Doc_SetPages(Document, 1);
	Doc_SetPage(Document, 0, "Map_NewWorld_Shrine.tga", TRUE); // TRUE = scale to fullscreen
	Doc_SetLevel(Document, "NewWorld\NewWorld.zen");
	Doc_SetLevelCoords(Document, -28000, 50500, 95500, -42500);
	Doc_Show(Document);
};

//**********************************************************************************
//	ItWr_VinosKellergeister_Mis
//**********************************************************************************

instance ItWr_VinosKellergeister_Mis(C_ITEM)
{
	name						= "Der Geist des Weines";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_05.3ds"; // BUCH VARIATIONEN: ItWr_Book_01.3DS, ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_VinosKellergeister_Mis;

	value						= 50;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string VinosKellergeister_Mis_1 = "Die Kraft der Traube";
const string VinosKellergeister_Mis_2 = "...ich habe schon eine Menge ausprobiert, doch diese Frucht, die mir letzte Woche von Übersee geliefert wurde, übertrifft meine kühnsten Erwartungen...";
const string VinosKellergeister_Mis_3 = "...der Saft dieser Traube ist so früchtig, wie keine andere, die man in diesem Teil des Landes finden kann...";
const string VinosKellergeister_Mis_4 = "...so weit so gut. Ich kann aber immer noch nicht den Gedanken verdrängen, hier in meiner geheimen Schnapsbrennerei erwischt zu werden. Keine Ahnung, was die mit mir machen, wenn die Miliz mich hier entdeckt, ich fürchte, dann werde ich höchstwahrscheilich in die Barriere geworfen...";
const string VinosKellergeister_Mis_5 = "...sie haben Verdacht geschöpft. Ich werde hier erst mal alles stehen und liegen lassen, bis sich die Wogen geglättet haben und werde meine Arbeit erst wieder aufnehmen, wenn ich mir sicher sein kann, dass sie mir nicht mehr folgen...";
func void Use_VinosKellergeister_Mis()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "BOOK_RED_L.tga", 0); // VARIATIONEN: BOOK_BROWN_L.tga, BOOK_MAGE_L.tga, BOOK_RED_L.tga
	Doc_SetPage(nDocID, 1, "BOOK_RED_R.tga", 0); // VARIATIONEN: BOOK_BROWN_R.tga, BOOK_MAGE_R.tga, BOOK_RED_R.tga

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, VinosKellergeister_Mis_1);
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, VinosKellergeister_Mis_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
	// Absatz
				Doc_PrintLines	(nDocID, 0, VinosKellergeister_Mis_3);
				Doc_PrintLines	(nDocID, 0, "");

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_SetFont(nDocID, 1, FONT_BookHeadline); // -1 -> all pages
				Doc_SetFont(nDocID, 1, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, VinosKellergeister_Mis_4);
				Doc_PrintLine	(nDocID, 1, "");
	// Absatz
				Doc_PrintLines	(nDocID, 1, VinosKellergeister_Mis_5);
	Doc_Show(nDocID);
};
