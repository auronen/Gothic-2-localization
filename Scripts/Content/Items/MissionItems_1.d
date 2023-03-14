//****************************************************************************
//			Schlüssel für Xardas Truhe
//			---------------------------------------------
//****************************************************************************
instance ItKe_Xardas(C_Item)
{
	name						= NAME_Key;

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Ein Truhenschlüssel";						count[2] = 0;
	text[3]						= "von Xardas";									count[3] = 0;
};

//**********************************************************************************
//	Canthars Kompromittierender Brief für Sarah die Händlerin
// ----------------------------------------------------------------------------------

instance ItWr_Canthars_KomproBrief_MIS(C_Item)
{
	name						= "Brief";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Canthars_KomproBrief;

	value						= 0;

	description					= "Canthars Brief für die Händlerin Sarah";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string Canthars_KomproBrief_1 = " Letzte Ermahnung";
const string Canthars_KomproBrief_2 = " Ich habe dir schon mehrere Male auf";
const string Canthars_KomproBrief_3 = " liebenswürdigste Weise mitgeteilt,";
const string Canthars_KomproBrief_4 = " daß ich die Waffen, die ich bei dir";
const string Canthars_KomproBrief_5 = " vor einer Woche bestellt habe, dringend";
const string Canthars_KomproBrief_6 = " brauche.";
const string Canthars_KomproBrief_7 = " Wenn ich nicht bald, etwas von dir höre,";
const string Canthars_KomproBrief_8 = " Sarah, dann sehe ich mich gezwungen,";
const string Canthars_KomproBrief_9 = " andere Seiten auf zu ziehen. Ich hoffe,";
const string Canthars_KomproBrief_10 = " wir verstehen uns!!!!!!!!!!!!";
const string Canthars_KomproBrief_11 = "     Onar";
func void Use_Canthars_KomproBrief()
{
	var int nDocID;

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Canthars_KomproBrief_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book);
				Doc_PrintLine	(nDocID, 0, Canthars_KomproBrief_2);
				Doc_PrintLine	(nDocID, 0, Canthars_KomproBrief_3);
				Doc_PrintLine	(nDocID, 0, Canthars_KomproBrief_4);
				Doc_PrintLine	(nDocID, 0, Canthars_KomproBrief_5);
				Doc_PrintLine	(nDocID, 0, Canthars_KomproBrief_6);
				Doc_PrintLine	(nDocID, 0, Canthars_KomproBrief_7);
				Doc_PrintLine	(nDocID, 0, Canthars_KomproBrief_8);
				Doc_PrintLine	(nDocID, 0, Canthars_KomproBrief_9);
				Doc_PrintLine	(nDocID, 0, Canthars_KomproBrief_10);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Canthars_KomproBrief_11);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1);
	Doc_Show(nDocID);
};

//****************************************************************************
//			Rods Schwert
//			---------------------------------------------
//****************************************************************************
instance ItMw_2h_Rod(C_Item)
{
	name						= "Rod's Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_035_2h_sld_sword_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Rod;

	damageTotal					= Damage_Rod;
	damageType					= DAM_EDGE;
	range						= RANGE_Sld2hSchwert;

	value						= Value_Sld2hSchwert;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//***************
// Coragons Silber
//***************
instance ItMi_CoragonsSilber(C_Item)
{
	name						= "Coragons Silber";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_SilverCup.3DS";
	material					= MAT_METAL;

	value						= Value_SilverCup;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//*******************************
// Päckchen für Thekla von Sagitta
//*******************************
instance ItMi_TheklasPaket(C_Item)
{
	name						= "Theklas Päckchen";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItMi_Packet.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_TheklasPacket;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_TheklasPacket()
{
	CreateInvItems(hero, ItPl_Mana_Herb_01, 3);
	CreateInvItems(hero, ItPl_Health_Herb_02, 1);
	CreateInvItems(hero, ItPl_Speed_Herb_01, 1);
	CreateInvItems(hero, ItPl_Blueplant, 2);

	Print(PRINT_GotPlants);
};

//*******************************
// Marias Goldener Teller
//*******************************
instance ItMi_MariasGoldPlate(C_Item)
{
	name						= "Schwerer Goldteller";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_GoldPlate.3DS";
	material					= MAT_METAL;

	value						= Value_GoldPlate;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Auf der Teller sind die Namen";				count[2] = 0;
	text[3]						= "Onar und Maria eingraviert.";				count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//*******************************
// Valentinos Ring
//*******************************

instance ItRi_ValentinosRing(C_Item) // bei Cassia als Belohnung
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Edge_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ValentinosRing;
	on_unequip					= UnEquip_ValentinosRing;

	value						= Value_Ri_ProtEdge;

	description					= "Valentinos Ring";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = Ri_ProtEdge;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ValentinosRing()
{
	self.protection [PROT_EDGE] += Ri_ProtEdge;
	self.protection [PROT_BLUNT] += Ri_ProtEdge;
};

func void UnEquip_ValentinosRing()
{
	self.protection [PROT_EDGE] -= Ri_ProtEdge;
	self.protection [PROT_BLUNT] -= Ri_ProtEdge;
};

//****************************************************************************
//			Schlüssel für Dexter Truhe
//			---------------------------------------------
//****************************************************************************
instance ItKe_Dexter(C_Item)
{
	name						= NAME_Key;

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_03.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Ein Truhenschlüssel";						count[2] = 0;
	text[3]						= "von Dexter";									count[3] = 0;
};

//**********************************************************************************
//	Constantinos Kräuterliste
// ----------------------------------------------------------------------------------

instance ItWr_Kraeuterliste(C_Item)
{
	name						= "Liste";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Kraeuterliste;

	value						= 0;

	description					= "Constantinos Kräuterliste";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string Kraeuterliste_1 = "Alchemistische Kräuter";
const string Kraeuterliste_2 = "Heilpflanze";
const string Kraeuterliste_3 = "Heilkraut";
const string Kraeuterliste_4 = "Heilwurzel";
const string Kraeuterliste_5 = "Feuernessel";
const string Kraeuterliste_6 = "Feuerkraut";
const string Kraeuterliste_7 = "Feuerwurzel";
const string Kraeuterliste_8 = "Goblin Beere";
const string Kraeuterliste_9 = "Drachenwurzel";
const string Kraeuterliste_10 = "Snapperkraut";
const string Kraeuterliste_11 = "Feldknöterich";
const string Kraeuterliste_12 = "Kronstöckl";
const string Kraeuterliste_13 = "Anmerkung: Lass dir doch von einem Lehrlings - Anwärter die Pflanzen bringen, dann weißt du ob er was taugt. ";
const string Kraeuterliste_14 = "Gruß, Zuris";
func void Use_Kraeuterliste()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels

				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_2);
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_3);
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_4);
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_5);
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_6);
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_7);
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_8);
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_9);
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_10);
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_11);
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_12);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Kraeuterliste_13);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Kraeuterliste_14);
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus

	Doc_Show(nDocID);
};

//**********************************************************************************
// Neoras Mana Rezept
// ----------------------------------------------------------------------------------

instance ItWr_ManaRezept(C_Item)
{
	name						= "Rezept";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_ManaRezept;

	value						= 20;

	description					= "Rezept der magischen Essenz";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string ManaRezept_1 = "Magische Tränke";
const string ManaRezept_2 = "Zur Herstellung von Tränken der magischen Kraft, benötigt der kundige Alchemist:";
const string ManaRezept_3 = "Feuernessel";
const string ManaRezept_4 = "Feuerkraut";
const string ManaRezept_5 = "Feuerwurzel";
const string ManaRezept_6 = "Dazu braucht er jeweils eine Pflanze ";
const string ManaRezept_7 = "Feldknöterich";
const string ManaRezept_8 = "Meister Neoras ";
func void Use_ManaRezept()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels

				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, ManaRezept_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, ManaRezept_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, ManaRezept_3);
				Doc_PrintLine	(nDocID, 0, ManaRezept_4);
				Doc_PrintLine	(nDocID, 0, ManaRezept_5);
				Doc_PrintLines	(nDocID, 0, ManaRezept_6);
				Doc_PrintLine	(nDocID, 0, ManaRezept_7);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, ManaRezept_8);
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus

	Doc_Show(nDocID);
};

// **************************************************************************************

instance ItWr_Passierschein(C_Item)
{
	name						= "Passierschein";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UsePassierschein;

	value						= 50;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Mit diesem Schein";							count[3] = 0;
	text[4]						= "komme ich an den Stadtwachen vorbei.";		count[4] = 0;
};

const string Passierschein_1 = "     Passierschein";
const string Passierschein_2 = "         Khorinis";
const string Passierschein_3 = " Diese Urkunde berechtigt seinen";
const string Passierschein_4 = " Besitzer, sich auf unbestimmte Zeit in den";
const string Passierschein_5 = " unteren Vierteln von Khorinis aufzuhalten.";
const string Passierschein_6 = "     Larius";
const string Passierschein_7 = "     königlicher Statthalter";
func void UsePassierschein()
{
	var int nDocID;

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_BookHeadline);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Passierschein_1);
				Doc_PrintLine	(nDocID, 0, Passierschein_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book);
				Doc_PrintLine	(nDocID, 0, Passierschein_3);
				Doc_PrintLine	(nDocID, 0, Passierschein_4);
				Doc_PrintLine	(nDocID, 0, Passierschein_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Passierschein_6);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Passierschein_7);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1);
	Doc_Show(nDocID);
};

//****************************************************************************
//				Kraut Paket für MIS_ANDRE_WAREHOUSE
//			---------------------------------------------
//****************************************************************************
instance ItMi_HerbPaket(C_Item)
{
	name						= "Kraut- Paket";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Packet.3ds";
	material					= MAT_LEATHER;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Ein schweres, klebriges Paket,";				count[2] = 0;
	text[3]						= "das nach Sumpfkraut stinkt";					count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = 200;
};

//****************************************************************************
//				Lagerhaus Schlüssel für MIS_ANDRE_WAREHOUSE
//			---------------------------------------------
//****************************************************************************
instance ItKe_Storage(C_Item)
{
	name						= "Lagerhaus- Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Schlüssel vom";							count[2] = 0;
	text[3]						= "Lagerhaus am Hafen";							count[3] = 0;
};

const int HP_Hering = 20;
//****************************************************************************
//				Alternativer Fish - danke Levelbereich !
//			---------------------------------------------
//****************************************************************************
instance ItFo_SmellyFish(C_Item)
{
	name						= "Hering";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItFo_Fish.3DS";
	material					= MAT_LEATHER;

	scemeName					= "FOOD";
	on_state[0]					= Use_SmellyFish;

	value						= 0;

	description					= "Ein Hering";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Hering;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Fish;
};

func void Use_SmellyFish()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Hering);
};

//****************************************************************************
//				Komischer Fisch von den Banditen mit Nachricht an Halvor
//			---------------------------------------------
//****************************************************************************
instance ItFo_HalvorFish_MIS(C_Item)
{
	name						= "Seltsamer Fisch";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItFo_Fish.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_HalvorFish;

	value						= 0;

	description					= "Seltsam aussehender Fisch";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Irgendwas stimmt nicht mit diesem Fisch.";	count[2] = 0;
	text[3]						= "Sieht aus, als wäre er zugenäht...";			count[3] = 0;
};

func void Use_HalvorFish()
{
	CreateInvItems(hero, ItWr_HalvorMessage, 1);
	Print(PRINT_FishLetter);
};

//****************************************************************************
//				Nachricht von Halvor an die Banditen, im Fisch versteckt
//			---------------------------------------------
//****************************************************************************
instance ItWr_HalvorMessage(C_Item)
{
	name						= "Stinkender Zettel";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseHalvorMessage;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Dieser Zettel war in einem Fisch versteckt";	count[2] = 0;
};

const string HalvorMessage_1 = " Haltet euren Hintern unten Jungs! ";
const string HalvorMessage_2 = " Die Miliz ist aufmerksam geworden.";
const string HalvorMessage_3 = " Keine Überfälle mehr, bis ich mich wieder melde!";
const string HalvorMessage_4 = "     Halvor";
func void UseHalvorMessage()
{
	Knows_Halvor = TRUE;

	var int nDocID;

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, HalvorMessage_1);
				Doc_PrintLine	(nDocID, 0, HalvorMessage_2);
				Doc_PrintLine	(nDocID, 0, HalvorMessage_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, HalvorMessage_4);
	Doc_Show(nDocID);
};

//****************************************************************************
//				Komischer Fisch von Halvor als Schweigegeld
//			---------------------------------------------
//****************************************************************************
/*
instance ItFo_HalvorFish(C_Item)
{
	name						= "Seltsamer Fisch";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItFo_Fish.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_HalvorFish;

	value						= 0;

	description					= "Seltsam aussehender Fisch";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Irgendwas ist in diesem Fisch versteckt";	count[2] = 0;
};

func void Use_HalvorFish()
{
	CreateInvItems(hero, ItMi_Nugget, 1);
	PrintScreen(PRINT_FoundOreNugget, -1, YPOS_LEVELUP, FONT_ScreenSmall, 2);
};

*/
//****************************************
//	Alriks Schwert
//****************************************

instance ItMw_AlriksSword_Mis(C_Item)
{
	name						= "Alrik´s Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_MISSION | ITEM_SWD;

	visual						= "ItMw_025_1h_Sld_Sword_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_Alrik;

	damageTotal					= damage_Alrik;
	damageType					= DAM_EDGE;
	range						= range_Alrik;

	on_equip					= Equip_AlriksSword;
	on_unequip					= UnEquip_AlriksSword;

	value						= value_Alrik;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_AlriksSword()
{
	B_AddFightSkill(self, NPC_TALENT_1H, 10);
};

func void UnEquip_AlriksSword()
{
	B_AddFightSkill(self, NPC_TALENT_1H, -10);
};

//****************************************************************************
//				Botschaft von Vatras an die Magier des Feuers
//			---------------------------------------------
//****************************************************************************
instance ItWr_VatrasMessage(C_Item)
{
	name						= "Versiegelte Botschaft";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_02.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= UseVatrasMessage;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Eine Botschaft von Vatras";					count[2] = 0;
	text[3]						= "für die Magier des Feuers";					count[3] = 0;
};

const string VatrasMessage_1 = "Werter Isgaroth,";
const string VatrasMessage_2 = "Ich spüre mehr und mehr die Anwesenheit einer anderen Macht.";
const string VatrasMessage_3 = "Eine Macht, die uns nicht unbekannt ist. Mag es sein, das Diener Beliars nahe sind?";
const string VatrasMessage_4 = "Möglich das ich irre, aber ich denke es wäre angebracht, das Vater Pyrokar sich der Angelegenheit annimmt. ";
const string VatrasMessage_5 = "Mögen unsere Gebete erhört werden.";
const string VatrasMessage_6 = "Vatras";
func void UseVatrasMessage()
{
	CreateInvItems(self, ItWr_VatrasMessage_Open, 1);
	var int nDocID;

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID, 0, VatrasMessage_1);
				Doc_PrintLines	(nDocID, 0, VatrasMessage_2);
				Doc_PrintLines	(nDocID, 0, VatrasMessage_3);
				Doc_PrintLines	(nDocID, 0, VatrasMessage_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, VatrasMessage_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, VatrasMessage_6);
	Doc_Show(nDocID);
};

//****************************************************************************
//				Botschaft von Vatras an die Magier des Feuers
//				Das Siegel wurde geöffnet
//			---------------------------------------------
//****************************************************************************
instance ItWr_VatrasMessage_Open(C_Item)
{
	name						= "Botschaft";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseVatrasMessageOpen;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Eine Botschaft von Vatras";					count[2] = 0;
	text[3]						= "für die Magier des Feuers";					count[3] = 0;
	text[4]						= "Das Siegel ist gebrochen";					count[4] = 0;
};

const string VatrasMessageOpen_1 = "Werter Isgaroth,";
const string VatrasMessageOpen_2 = "Ich spüre mehr und mehr die Anwesenheit einer anderen Macht.";
const string VatrasMessageOpen_3 = "Eine Macht, die uns nicht unbekannt ist. Mag es sein, das Diener Beliars nahe sind?";
const string VatrasMessageOpen_4 = "Möglich das ich irre, aber ich denke es wäre angebracht, das Vater Pyrokar sich der Angelegenheit annimmt. ";
const string VatrasMessageOpen_5 = "Mögen unsere Gebete erhört werden.";
const string VatrasMessageOpen_6 = "Vatras";
func void UseVatrasMessageOpen()
{
	var int nDocID;

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID, 0, VatrasMessageOpen_1);
				Doc_PrintLines	(nDocID, 0, VatrasMessageOpen_2);
				Doc_PrintLines	(nDocID, 0, VatrasMessageOpen_3);
				Doc_PrintLines	(nDocID, 0, VatrasMessageOpen_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, VatrasMessageOpen_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, VatrasMessageOpen_6);
	Doc_Show(nDocID);
};

//****************************************************
//		Hotelschlüssel
//****************************************************
instance ItKe_Hotel(C_Item)
{
	name						= "Zimmerschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Zimmerschlüssel";						count[2] = 0;
	text[3]						= "vom Hotel";									count[3] = 0;
};

//****************************************************
//		Schlüssel zur Diebesgilde
//****************************************************
instance ItKe_ThiefGuildKey_MIS(C_Item)
{
	name						= "verrosteter Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Meersalz hat diesen Schlüssel zerfressen";	count[2] = 0;
};

//****************************************************
//		Schlüssel zur Diebesgilde vom Hotel
//****************************************************
instance ItKe_ThiefGuildKey_Hotel_MIS(C_Item)
{
	name						= "Rostiger Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Kellerschlüssel vom Hotel";				count[2] = 0;
};

//****************************************************
//		Pfortenschlüssel Tempel von Innos
//****************************************************
instance ItKe_Innos_MIS(C_Item)
{
	name						= NAME_Key;

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Schlüssel zur Pforte";					count[2] = 0;
	text[3]						= "des Innos Klosters";							count[3] = 0;
};

//****************************************************************************
//			Schlüssel Vorratskammer Kloster
//			---------------------------------------------
//****************************************************************************
instance ItKe_KlosterSchatz(C_Item)
{
	name						= NAME_Key;

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Schlüssel zur ";							count[2] = 0;
	text[3]						= "Schatzkammer im Kloster";					count[3] = 0;
};

//****************************************************************************
//			Schlüssel Vorratskammer Kloster
//			---------------------------------------------
//****************************************************************************
instance ItKe_KlosterStore(C_Item)
{
	name						= NAME_Key;

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Schlüssel zur ";							count[2] = 0;
	text[3]						= "Vorratskammer im Kloster";					count[3] = 0;
};

//****************************************************************************
//			Schlüssel Schlafgemach Player
//			---------------------------------------------
//****************************************************************************
instance ItKe_KDFPlayer(C_Item)
{
	name						= NAME_Key;

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Schlüssel zum ";							count[2] = 0;
	text[3]						= "Gemach im Kloster";							count[3] = 0;
};

//****************************************************************************
//			Schlüssel Bibliothek Kloster
//			---------------------------------------------
//****************************************************************************
instance ItKe_KlosterBibliothek(C_Item)
{
	name						= NAME_Key;

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Schlüssel zur ";							count[2] = 0;
	text[3]						= "Bibliothek im Kloster";						count[3] = 0;
};

//****************************************************************************
//			Extra Wurst Gorax Mission
//			---------------------------------------------
//****************************************************************************
instance ItFo_Schafswurst(C_Item)
{
	name						= "Schafswurst";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Sausage.3DS";
	material					= MAT_LEATHER;

	scemeName					= "FOOD";
	on_state[0]					= Use_Schafswurst;

	value						= Value_Sausage;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Sausage;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Sausage;
};

func void Use_Schafswurst()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Sausage);
};

/******************************************************************************************/
instance ItPo_Perm_LittleMana(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_MANAPOTION";

	visual						= "ItPo_Perm_Mana.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_LittleMana;

	value						= 150;

	description					= "Essenz des Geistes";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_ManaMax;							count[1] = 3;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value;
};

func void UseItPo_LittleMana()
{
	B_RaiseAttribute(self, ATR_MANA_MAX, 3);
	Npc_ChangeAttribute(self, ATR_MANA, 3);
};

//****************************************************
//		Hammer Innos, für Golem Prüfung
//****************************************************
instance Holy_Hammer_MIS(C_Item)
{
	name						= "Heiliger Hammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_MISSION | ITEM_2HD_AXE;

	owner						= Nov_608_Garwig;
	visual						= "ItMw_030_2h_kdf_hammer_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_HolyHammer;

	damageTotal					= Damage_HolyHammer;
	damageType					= DAM_BLUNT;
	range						= Range_HolyHammer;

	value						= Value_HolyHammer;

	description					= name;
	// FIXME_Noki: TAB
	/*
	description = name;
	TEXT[2] = NAME_Damage; COUNT[2] = damageTotal;
	TEXT[3] = NAME_Str_needed; COUNT[3] = cond_value[2];
	TEXT[4] = NAME_OneHanded;
	TEXT[5] = NAME_Value; COUNT[5] = value;

	Die Konstanten stehen in der Tuning_Melee_Weapons.d M.F.
	*/
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Schaden:                 ??";				count[2] = 0;
	text[3]						= "benötigte Stärke:        ??";				count[3] = 0;
	text[4]						= "Zweihandwaffe             ";					count[4] = 0;
	text[5]						= "Wert:  nicht einschätzbar";					count[5] = value;
};

//****************************************************************************
//			Schlüssel für die Truhe in der Magierhöhle
//			---------------------------------------------
//****************************************************************************
instance ItKe_MagicChest(C_Item)
{
	name						= "Alter Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Eine alter eiserner Schlüssel.";				count[2] = 0;
	text[3]						= "Er könnnte zu einem ";						count[3] = 0;
	text[4]						= "Vorhängeschloss gehören.";					count[4] = 0;
};

//****************************************************************************
//			gefälschter Passierschein von Lee
//			---------------------------------------------
//****************************************************************************
instance ItWr_Passage_MIS(C_Item)
{
	name						= "Friedensangebot an die Paladine";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UsePassage;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Mit diesem Schein,sollte ich bei ";			count[3] = 0;
	text[4]						= "Lord Hagen vorgelassen werden";				count[4] = 0;
};

const string Passage_1 = "Ehrenwerter Lord Hagen,";
const string Passage_2 = "Wir beide wissen um die Lage, in der Ihr euch befindet. Ich schlage daher folgenden Handel vor: ";
const string Passage_3 = "Ihr erteilt mir und allen meinen Männern Generalabsolution vor Innos und dem König. ";
const string Passage_4 = "Im Gegenzug bieten wir unsere Dienste für die Verteidigung der Stadt und des umliegenden Landes an. ";
const string Passage_5 = "Desweiteren werde ich dafür sorgen, daß meine Männer von den umliegenden Höfen fernbleiben - natürlich mit Ausnahme des Hofes von Onar, auf dem wir weiterhin stationiert bleiben werden.";
const string Passage_6 = "Ich weiß, daß auf dem Schiff, mit dem Ihr zum Festland aubrechen werdet, noch Platz für mich und einige meiner Männer ist. Wenn Ihr in See stecht, will ich an Bord sein.";
const string Passage_7 = "Ich ersuche Euch, trefft Eure Entscheidung mit aller Euch gegebenen Weisheit. ";
const string Passage_8 = "gezeichnet   General Lee";
func void UsePassage()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels

				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Passage_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Passage_2);
				Doc_PrintLines	(nDocID, 0, Passage_3);
				Doc_PrintLines	(nDocID, 0, Passage_4);
				Doc_PrintLines	(nDocID, 0, Passage_5);
				Doc_PrintLines	(nDocID, 0, Passage_6);
				Doc_PrintLines	(nDocID, 0, Passage_7);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Passage_8);
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus

	Doc_Show(nDocID);
};

//****************************************************************************
//			Nachricht des Banditen -> Plot Wo ist die Armee?
//			---------------------------------------------
//****************************************************************************

instance ItWr_BanditLetter_MIS(C_Item)
{
	name						= "Nachricht";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseBanditLetter;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
};

const string BanditLetter_1 = "Haltet alle Männer auf, ";
const string BanditLetter_2 = " die aus den Bergen kommen.";
const string BanditLetter_3 = "Falls jemand den Pass entlangkommt, ";
const string BanditLetter_4 = " ist es wahrscheinlich ein alter Mann.";
const string BanditLetter_5 = "Lasst euch nicht von ihm täuschen - ";
const string BanditLetter_6 = " er ist ein gefählicher Hexer.   ";
const string BanditLetter_7 = "Behaltet den Kerl im Auge";
const string BanditLetter_8 = "Kann gut sein, das der Typ den wir suchen, ";
const string BanditLetter_9 = " mit ihm Kontakt aufnimmt. ";
const string BanditLetter_10 = "Mit diesem Brief schicke ich euch ";
const string BanditLetter_11 = " dreissig Goldstücke. ";
const string BanditLetter_12 = "Nochmal dreissig bekommt derjenige, ";
const string BanditLetter_13 = " der den Mann tötet. ";
const string BanditLetter_14 = "Bringt seinen Kopf zur alten Mine, beim Großbauer.";
const string BanditLetter_15 = ".....D.";
func void UseBanditLetter()
{
	var int nDocID;

	/*
	if (Bdt13_Dexter_verraten == FALSE)
	{
		Bdt13_Dexter_verraten = TRUE;

		Log_CreateTopic(Topic_Bandits, LOG_MISSION);
		Log_SetTopicStatus(Topic_Bandits, LOG_RUNNING);
		B_LogEntry(Topic_Bandits, "Der Anführer der Banditen ist Dexter. Er versteckt sich bei einer Mine, beim Großbauer.");
		MIS_Steckbriefe = LOG_RUNNING;
	};

		*/

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book);
				Doc_PrintLine	(nDocID, 0, BanditLetter_1);
				Doc_PrintLine	(nDocID, 0, BanditLetter_2);
				Doc_PrintLine	(nDocID, 0, BanditLetter_3);
				Doc_PrintLine	(nDocID, 0, BanditLetter_4);
				Doc_PrintLine	(nDocID, 0, BanditLetter_5);
				Doc_PrintLine	(nDocID, 0, BanditLetter_6);
				Doc_PrintLine	(nDocID, 0, BanditLetter_7);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, BanditLetter_8);
				Doc_PrintLine	(nDocID, 0, BanditLetter_9);
				Doc_PrintLine	(nDocID, 0, BanditLetter_10);
				Doc_PrintLine	(nDocID, 0, BanditLetter_11);
				Doc_PrintLine	(nDocID, 0, BanditLetter_12);
				Doc_PrintLine	(nDocID, 0, BanditLetter_13);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, BanditLetter_14);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, BanditLetter_15);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1);
	Doc_Show(nDocID);
};

//****************************************************************************
//			Steckbrief vom Spieler
//			---------------------------------------------
//****************************************************************************
instance ItWr_Poster_MIS(C_Item)
{
	name						= "Steckbrief";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UsePoster;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Ein Bild von mir!";							count[3] = 0;
	text[4]						= "";											count[4] = 0;
};

func void UsePoster()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "Gesucht.TGA", 0);
	Doc_Show(nDocID);
};

//****************************************************************************
//				Banditen Truhen Schlüssel
//			---------------------------------------------
//****************************************************************************
instance ItKe_Bandit(C_Item)
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
	text[2]						= "Der Schlüssel";								count[2] = 0;
	text[3]						= "gehörte einem Banditen";						count[3] = 0;
};

//****************************************************************************
//				Bospers Jagdbogen
//			---------------------------------------------
//****************************************************************************
instance ItRw_Bow_L_03_MIS(C_Item)
{
	name						= "Jagdbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW | ITEM_MISSION;

	munition					= ItRw_Arrow;

	visual						= "ItRw_Bow_L_03.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= Condition_Jagdbogen;

	damageTotal					= Damage_Jagdbogen;
	damageType					= DAM_POINT;

	value						= Value_Jagdbogen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "Bosper's Jagdbogen";							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//****************************************************************************
//				Constantinos Schutzring
//			---------------------------------------------
//****************************************************************************
instance ItRi_Prot_Point_01_MIS(C_Item)
{
	name						= "Constantino's Ring";

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING | ITEM_MISSION;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Point_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Prot_Point_01_MIS;
	on_unequip					= UnEquip_ItRi_Prot_Point_01_MIS;

	value						= Value_Ri_ProtPoint;

	description					= "Schutz des Holzes ";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Point;								count[2] = Ri_ProtPoint;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Prot_Point_01_MIS()
{
	self.protection [PROT_POINT] += Ri_ProtPoint;
};

func void UnEquip_ItRi_Prot_Point_01_MIS()
{
	self.protection [PROT_POINT] -= Ri_ProtPoint;
};

//****************************************************************************
//				Eddas Statue
//			---------------------------------------------
//****************************************************************************
instance ItMi_EddasStatue(C_Item)
{
	name						= "Innos Statue";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItMi_InnosStatue.3DS";
	material					= MAT_METAL;

	value						= 50;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Innos Herr der Gerechtigkeit ";				count[2] = 0;
	text[3]						= "segne und behüte mich";						count[3] = 0;
	text[4]						= "auf das mir kein Unheil widerfahre";			count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//****************************************************************************
//				Crypta-Schlüssel
//			---------------------------------------------
//****************************************************************************
instance ItKe_EVT_CRYPT_01(C_Item)
{
	name						= "Alter Messingschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Schlüssel vom Skelett in Raum 1";		count[2] = 0;
};

instance ItKe_EVT_CRYPT_02(C_Item)
{
	name						= "Alter Messingschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Schlüssel vom Skelett in Raum 2";		count[2] = 0;
};

instance ItKe_EVT_CRYPT_03(C_Item)
{
	name						= "Alter Messingschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Schlüssel vom Skelett Raum 3";			count[2] = 0;
};

const int VALUE_ITAR_PAL_SKEL = 500;

instance ITAR_PAL_SKEL(C_Item)
{
	name						= "Alte Ritterrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "ItAr_Pal_H.3ds";
	visual_change				= "Armor_Pal_Skeleton.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 100;
	protection[PROT_BLUNT]		= 100;
	protection[PROT_POINT]		= 100;
	protection[PROT_FIRE]		= 50;
	protection[PROT_MAGIC]		= 50;

	value						= VALUE_ITAR_PAL_SKEL;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

//****************************************************************************
//				Schlüssel zu Valentinos Truhe
//			---------------------------------------------
//****************************************************************************
instance ItKe_Valentino(C_Item)
{
	name						= "Truhen Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Truhenschlüssel";						count[2] = 0;
	text[3]						= "von Valentino";								count[3] = 0;
};

//****************************************************************************
//				Schlüssel zur Truhe OV Noname Typen
//			---------------------------------------------
//****************************************************************************
instance ItKe_Buerger(C_Item)
{
	name						= "Truhen Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Lag auf einer Fensterbank rum";				count[2] = 0;
	text[3]						= "";											count[3] = 0;
};

//****************************************************************************
//				Schlüssel Richter Truhe
//			---------------------------------------------
//****************************************************************************
instance ItKe_Richter(C_Item)
{
	name						= "Truhen Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Der Truhenschlüssel";						count[2] = 0;
	text[3]						= "des Richters";								count[3] = 0;
};

//****************************************************************************
//				Schlüssel Salandril
//			---------------------------------------------
//****************************************************************************
instance ItKe_Salandril(C_Item)
{
	name						= "Truhen Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "von Salandril dem Alchemisten";				count[2] = 0;
	text[3]						= "";											count[3] = 0;
};

//****************************************************************************
//				Schlüssel Truhe ...wo die Paladine schlafen
//			---------------------------------------------
//****************************************************************************
instance ItKe_PaladinTruhe(C_Item)
{
	name						= "Truhen Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Ein kleiner Messingschlüssel";				count[2] = 0;
	text[3]						= "aus dem Haus der Paladine";					count[3] = 0;
};

//****************************************************************************
//				Diebsgilde Schatz (Insel)
//			---------------------------------------------
//****************************************************************************
instance ItKe_ThiefTreasure(C_Item)
{
	name						= NAME_Key;

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItKe_Key_03.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Ein kleiner Schlüssel";						count[2] = 0;
};

//****************************************************************************
//				Diebsgilde Fingers Tür
//			---------------------------------------------
//****************************************************************************
instance ItKe_Fingers(C_Item)
{
	name						= NAME_Key;

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_03.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Ein rostiger Türschlüssel";					count[2] = 0;
	text[3]						= "aus der Kanalisation";						count[3] = 0;
};

//**********************************************************************************
//	Lehmars Schuldenbuch
//**********************************************************************************

instance ItWr_Schuldenbuch(C_ITEM)
{
	name						= "Schulden Buch";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_05.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseSchuldBuch;

	value						= 100;

	description					= "Lehmar's Schuldenbuch";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string SchuldBuch_1 = "Geschäfte und Schulden";
const string SchuldBuch_2 = "Ich Meister Thorben, Schreiner von Khorinis, schulde dem ehrenwerten Herrn Lehmar 200 Goldmünzen";
const string SchuldBuch_3 = "             Thorben";
const string SchuldBuch_4 = "Ich Coragon, Wirt in Khorinis, schulde dem ehrenwerten Herrn Lehmar 150 Goldmünzen";
const string SchuldBuch_5 = "             Coragon";
const string SchuldBuch_6 = "Ich, Hanna, Besitzerin des Hotels in Khorinis, schulde Herrn Lehmar 250 Goldmünzen.";
const string SchuldBuch_7 = "               Hanna";
func void UseSchuldBuch()
{
	var int nDocID;

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);

	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, SchuldBuch_1);
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, SchuldBuch_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, SchuldBuch_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, SchuldBuch_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, SchuldBuch_5);
	// Absatz
				Doc_PrintLine	(nDocID, 0, "");

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				// Doc_SetFont( nDocID, 1, FONT_BookHeadline ); // -1 -> all pages
				// Doc_PrintLine	(nDocID, 1, "");
				// Doc_PrintLines	(nDocID, 1, "StandardBuch Seite 2");
				Doc_SetFont(nDocID, 1, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, SchuldBuch_6);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, SchuldBuch_7);
	// Absatz
				Doc_PrintLines	(nDocID, 1, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Lehmars Schuldenbuch
//**********************************************************************************

instance ItPl_Sagitta_Herb_MIS(C_Item)
{
	name						= "Sonnenaloe";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItPl_Strength_Herb_01.3DS";
	material					= MAT_WOOD;

	scemeName					= "FOOD";

	value						= Value_Strength_Herb_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Strength_Herb_01;
};

//****************************************************************************
//			Schlüssel für die obernen Schlafzimmer in der Taverne (MITTE DER WELT!)
//			---------------------------------------------
//****************************************************************************
instance ITKE_ORLAN_HOTELZIMMER(C_Item)
{
	name						= "Zimmerschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "der Tarverne ´Zur Toten Harpie´";			count[2] = 0;
	text[3]						= "";											count[3] = 0;
};

instance ItRw_DragomirsArmbrust_MIS(C_Item)
{
	name						= "Dragomir´s Armbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	munition					= ItRw_Bolt;

	visual						= "ItRw_Crossbow_L_02.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= Condition_LeichteArmbrust;

	damageTotal					= Damage_LeichteArmbrust;
	damageType					= DAM_POINT;

	value						= Value_LeichteArmbrust;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_STR_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};
