//**********************************************************************************
//	ItWr_XardasLetterToOpenBook_MIS an den SC um die HALLEN von Irdorath zu öffnen!
// ----------------------------------------------------------------------------------

instance ItWr_XardasLetterToOpenBook_MIS(C_Item)
{
	name						= "Xardas Brief";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_XardasLetterToOpenBook;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string XardasLetterToOpenBook_1 = "Ich hatte vermutet, einer der Drachen im Minental sei die Quelle der bösen Macht.";
const string XardasLetterToOpenBook_2 = "Ich habe mich geirrt.";
const string XardasLetterToOpenBook_3 = "Wenn alles so gekommen ist, wie ich es vermute, ";
const string XardasLetterToOpenBook_4 = "wirst du jetzt nach den Hallen von Irdorath suchen. ";
const string XardasLetterToOpenBook_5 = "Das Buch, das du Pyrokar gegeben hast, enthält alle Hinweise, die du brauchst.";
const string XardasLetterToOpenBook_6 = "Mir hätte klar sein sollen, warum die Suchenden";
const string XardasLetterToOpenBook_7 = " es in ihren Besitz bringen wollten.";
const string XardasLetterToOpenBook_8 = "Du mußt es dir wiederbeschaffen!";
const string XardasLetterToOpenBook_9 = "Die Worte 'XARAK BENDARDO' werden es öffnen. Verrate sie niemandem!";
const string XardasLetterToOpenBook_10 = "Ich werde mich nun wichtigeren Dingen widmen.";
const string XardasLetterToOpenBook_11 = "Ich kann dir bei deiner letzten Aufgabe nicht beistehen - nur du kannst es schaffen, die Quelle des Bösen zu bezwingen.";
const string XardasLetterToOpenBook_12 = "Wir werden uns wiedersehen! ";
const string XardasLetterToOpenBook_13 = "                             Xardas.";
func void Use_XardasLetterToOpenBook()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, XardasLetterToOpenBook_1);
				Doc_PrintLines	(nDocID, 0, XardasLetterToOpenBook_2);
				Doc_PrintLines	(nDocID, 0, XardasLetterToOpenBook_3);
				Doc_PrintLines	(nDocID, 0, XardasLetterToOpenBook_4);
				Doc_PrintLines	(nDocID, 0, XardasLetterToOpenBook_5);
				Doc_PrintLines	(nDocID, 0, XardasLetterToOpenBook_6);
				Doc_PrintLines	(nDocID, 0, XardasLetterToOpenBook_7);
				Doc_PrintLines	(nDocID, 0, XardasLetterToOpenBook_8);
				Doc_PrintLines	(nDocID, 0, XardasLetterToOpenBook_9);
				Doc_PrintLines	(nDocID, 0, XardasLetterToOpenBook_10);
				Doc_PrintLines	(nDocID, 0, XardasLetterToOpenBook_11);
				Doc_PrintLines	(nDocID, 0, XardasLetterToOpenBook_12);
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, XardasLetterToOpenBook_13);
	Doc_Show(nDocID);

	if (MIS_Xardas_SCCanOpenIrdorathBook == FALSE)
	{
		B_LogEntry(TOPIC_BuchHallenVonIrdorath, TOPIC_BuchHallenVonIrdorath_2);
	};

	MIS_Xardas_SCCanOpenIrdorathBook = TRUE; // Joly: Spieler kann nun das Buch im Kloster lesen und findet so die geheime Bibliothek!
};

//**********************************************************************************
//	ItKe_MonastarySecretLibrary_Mis Schlüssel zur geheimen Bibliothek
//**********************************************************************************

instance ItKe_MonastarySecretLibrary_Mis(C_Item)
{
	name						= "Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= Value_Key_02;

	description					= name;
	text[0]						= "aus dem Buch ´Die Hallen von Irdorath´";		count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//**********************************************************************************
//	ItWr_HallsofIrdorath_Mis
//**********************************************************************************

instance ItWr_HallsofIrdorath_Mis(C_ITEM)
{
	name						= "Die Hallen von Irdorath";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_05.3ds"; // BUCH VARIATIONEN: ItWr_Book_01.3DS, ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_HallsofIrdorath;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_HallsofIrdorath()
{
	if (MIS_Xardas_SCCanOpenIrdorathBook == TRUE)
	{
		B_Say(self, self, "$SCOPENSIRDORATHBOOK");

		Wld_PlayEffect("spellFX_LIGHTSTAR_WHITE", hero, hero, 0, 0, 0, FALSE);
		Snd_Play("SFX_HealObsession");

		CreateInvItems(hero, ItWr_HallsofIrdorath_Open_Mis, 1);
		CreateInvItems(hero, ItKe_MonastarySecretLibrary_Mis, 1);
		CreateInvItems(hero, ItWr_UseLampIdiot_Mis, 1);

		Print(PRINT_IrdorathBookHiddenKey);
		B_GivePlayerXP(XP_HallsofIrdorathIsOpen);
		ItWr_HallsofIrdorathIsOpen = TRUE;

		B_LogEntry(TOPIC_BuchHallenVonIrdorath, TOPIC_BuchHallenVonIrdorath_3);
	}
	else
	{
		CreateInvItems(hero, ItWr_HallsofIrdorath_Mis, 1); // Joly: wegen MAPSEALED!!!!!

		Print(PRINT_IrdorathBookDoesntOpen);
		Wld_PlayEffect("spellFX_Fear", self, self, 0, 0, 0, FALSE);
		Snd_Play("MFX_FEAR_CAST");
	};
};

//**********************************************************************************
//	ItWr_HallsofIrdorath_Open_Mis
//**********************************************************************************

instance ItWr_HallsofIrdorath_Open_Mis(C_ITEM)
{
	name						= "Die Hallen von Irdorath";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_05.3ds"; // BUCH VARIATIONEN: ItWr_Book_01.3DS, ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_HallsofIrdorath_Open;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string HallsofIrdorath_Open_1 = "...und so habe ich den Zugang zur Bibliothek hinter einer Geheimtür versteckt, um meine Aufzeichnungen über die Tempel Beliars zu schützen. ";
const string HallsofIrdorath_Open_2 = "Hätten meine Glaubensbrüder von der Existenz dieser Aufzeichnungen gewußt, hätten diese verblendeten Narren sicherlich alles vernichtet.";
const string HallsofIrdorath_Open_3 = "Jetzt wissen sie nicht mehr, als dass es diese Tempel einmal gegeben hat.";
const string HallsofIrdorath_Open_4 = "Zur Sicherheit habe ich einige Diener zum Schutz der Bibliothek beschworen.";
const string HallsofIrdorath_Open_5 = "Der Schlüssel öffnet die letzte Tür.";
func void Use_HallsofIrdorath_Open()
{
	if (ItWr_SCReadsHallsofIrdorath == FALSE)
	{
		B_LogEntry(TOPIC_BuchHallenVonIrdorath, TOPIC_BuchHallenVonIrdorath_4);
	};

	ItWr_SCReadsHallsofIrdorath = TRUE;

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
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, HallsofIrdorath_Open_1);
				Doc_PrintLines	(nDocID, 0, HallsofIrdorath_Open_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_SetFont(nDocID, 1, FONT_BookHeadline); // -1 -> all pages
				Doc_PrintLine	(nDocID, 1, "");
				Doc_SetFont(nDocID, 1, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, HallsofIrdorath_Open_3);
				Doc_PrintLine	(nDocID, 1, "");
	// Absatz
				Doc_PrintLines	(nDocID, 1, HallsofIrdorath_Open_4);
				Doc_PrintLine	(nDocID, 1, "");
	// Absatz
				Doc_PrintLine	(nDocID, 1, "");
	// Absatz
				Doc_PrintLines	(nDocID, 1, HallsofIrdorath_Open_5);

	Doc_Show(nDocID);
};

//**********************************************************************************
//	ItWr_XardasSeamapBook_Mis
//**********************************************************************************

instance ItWr_XardasSeamapBook_Mis(C_ITEM)
{
	name						= "Verstaubtes Buch";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_01.3ds"; // BUCH VARIATIONEN: ItWr_Book_01.3DS, ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_XardasSeamapBook_Mis;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string XardasSeamapBook_Mis_1 = "...ich bin mir jetzt sicher, dass es sich bei diesem Bauwerk um die Hallen von Irdorath handelt. Sie befinden sich augenblicklich auf einer Insel nicht weit vor Khorinis Hafen. Beliars Interesse an den Erzminen wird immer offenkundiger...";
const string XardasSeamapBook_Mis_2 = "...je stärker sie sind desto eher scheinen sie es wert zu sein, ihm als Untote zu dienen. Ein solch bekehrter Paladin ist für einen Kämpfer nur schwer zu besiegen. Einer von ihnen ist mir in die Hände gefallen. Ich hoffe die anderen werden seine Anwesendheit hier unten nicht bemerken...";
const string XardasSeamapBook_Mis_3 = "...der bekehrte Paladin, scheint auf keinerlei Reize mehr zu reagieren. Ich habe seine Rüstung und seine restlichen Habseeligkeiten im hinteren Raum verstaut. Die Tür kann nur von innen geöffnet werden. Ich habe eine Teleportrune gebaut, um in den Raum zu gelangen. Die Anleitung dazu  habe ich im Almanach hinterlegt, so dass er Eine sie finden kann...";
const string XardasSeamapBook_Mis_4 = "...die Zeichen sind eindeutig! Wenn der Eine kommt, wird er jede Hilfe brauchen, die wir ihm geben können, Beliar ist schon zu stark. Mir ist es gelungen einige sehr wertvolle Artefakte zu erwerben und werde sie für den Fall der Fälle hier unten aufbewahren. Ich gehe davon aus, das der erwählte aus unseren Reihe stammt und ";
const string XardasSeamapBook_Mis_5 = "habe ihm ein paar Anweisungen in den Almanach geschreiben.";
const string XardasSeamapBook_Mis_6 = "...Ich bin mir nun sicher. Wir können das Schicksal nicht aufhalten. Sobalt Beliar sich stark genug fühlt, wird er sich erheben und nach der Herrschaft über die Welt greifen. Ich muss den Einen finden, sonst sind wir verloren.";
const string XardasSeamapBook_Mis_7 = "...es wird einen Krieg geben, einen Krieg um das Schicksal der Welt. Ich scheine der Einzige zu zu sein, der die Vorzeichen deuten kann. Um mich herum scheint sie jeder zu ignorieren. Es wird der Eine kommen und mit seinem Erscheinen hat der Krieg begonnen. Dieser Krieg ist so alt wie die Zeit, aber es scheint sich eine Entscheidung abzuzeichenen  ";
const string XardasSeamapBook_Mis_8 = "und ich werde nicht tatenlos zusehen, wie Andere das Geschick der Welt in ihre Hände nehmen.";
const string XardasSeamapBook_Mis_9 = "...Ich habe die alten Schriften studiert und Anleitung gefunden wie man die sagenumwobenen Waffen der alten Drachenherren herstellen kann. Allerdings kann ich mir nicht vorstellen, wo man die Zutaten herbekommen soll. Zur Sicherheit habe ich das Rezept im Almanach niedergelegt, wer von uns kann schon sagen, was die Zukunft uns bringen mag, vielleicht ja sogar Drachen.";
func void Use_XardasSeamapBook_Mis()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "BOOK_BROWN_L.tga", 0); // VARIATIONEN: BOOK_BROWN_L.tga, BOOK_MAGE_L.tga, BOOK_RED_L.tga
	Doc_SetPage(nDocID, 1, "BOOK_BROWN_R.tga", 0); // VARIATIONEN: BOOK_BROWN_R.tga, BOOK_MAGE_R.tga, BOOK_RED_R.tga

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, XardasSeamapBook_Mis_1);
				Doc_PrintLines	(nDocID, 0, "");

	if (hero.guild == GIL_PAL)
	{
				Doc_PrintLines	(nDocID, 0, XardasSeamapBook_Mis_2);

		// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_SetFont(nDocID, 1, FONT_BookHeadline); // -1 -> all pages
				Doc_SetFont(nDocID, 1, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, XardasSeamapBook_Mis_3);
	};

	if (hero.guild == GIL_KDF)
	{
				Doc_PrintLines	(nDocID, 0, XardasSeamapBook_Mis_4);

		// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_SetFont(nDocID, 1, FONT_BookHeadline); // -1 -> all pages
				Doc_SetFont(nDocID, 1, FONT_Book); // -1 -> all pages
				Doc_PrintLines	(nDocID, 1, XardasSeamapBook_Mis_5);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, XardasSeamapBook_Mis_6);
	};

	if (hero.guild == GIL_DJG)
	{
				Doc_PrintLines	(nDocID, 0, XardasSeamapBook_Mis_7);

		// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_SetFont(nDocID, 1, FONT_BookHeadline); // -1 -> all pages
				Doc_SetFont(nDocID, 1, FONT_Book); // -1 -> all pages
				Doc_PrintLines	(nDocID, 1, XardasSeamapBook_Mis_8);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, XardasSeamapBook_Mis_9);
	};

	Doc_Show(nDocID);
};

//**********************************************************************
//	geheime Nachricht geheimer Schalter Lampe
//**********************************************************************

instance ItWr_UseLampIdiot_Mis(C_Item)
{
	name						= "Zerknüllter Brief";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseItWr_UseLampIdiot_Mis;

	value						= 50;

	description					= name;
	text[0]						= "aus dem Buch ´Die Hallen von Irdorath´";		count[0] = 0;
};

const string ItWr_UseLampIdiot_Mis_1 = "     Die Lampe bringt Licht ";
const string ItWr_UseLampIdiot_Mis_2 = "     in die unteren Gefilde";
func void UseItWr_UseLampIdiot_Mis()
{
	var int nDocID;

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_BookHeadline);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book);
				Doc_PrintLine	(nDocID, 0, ItWr_UseLampIdiot_Mis_1);
				Doc_PrintLine	(nDocID, 0, ItWr_UseLampIdiot_Mis_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1);
	Doc_Show(nDocID);
};

//**********************************************************************************
//	ItWr_Seamap_Irdorath
//**********************************************************************************

instance ItWr_Seamap_Irdorath(C_Item)
{
	name						= "Seekarte zur Insel von Irdorath";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Seamap_Irdorath;

	value						= 50;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_Seamap_Irdorath()
{
	var int nDocID;

	nDocID = Doc_CreateMap(); // DocManager
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "Map_NewWorld_Seamap.tga", 1); // 1 -> DO NOT SCALE
	Doc_Show(nDocID);

	if ((MIS_ShipIsFree == FALSE)
	&& (Kapitel < 6))
	{
		B_Say(self, self, "$IRDORATHTHEREYOUARE");
	};

	if (MIS_SCKnowsWayToIrdorath == FALSE)
	{
		Log_CreateTopic(TOPIC_SHIP, LOG_MISSION);
		Log_SetTopicStatus(TOPIC_SHIP, LOG_RUNNING);
		B_LogEntry(TOPIC_SHIP, TOPIC_SHIP_3);
		B_GivePlayerXP(XP_SCKnowsWayToIrdorath);
	};

	MIS_SCKnowsWayToIrdorath = TRUE;
};

//**********************************************************************
//	Gefälschter Brief von Lee zum benutzen des Schiffes
//**********************************************************************

instance ITWr_ForgedShipLetter_MIS(C_Item)
{
	name						= "Schiffsbrief";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_02.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseITWr_ForgedShipLetter_MIS;

	value						= 50;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Ermächtigungsschreiben";						count[3] = 0;
	text[4]						= "für das Schiff der Paladine";				count[4] = 0;
};

const string ITWr_ForgedShipLetter_MIS_1 = " Ermächtigungsschreiben";
const string ITWr_ForgedShipLetter_MIS_2 = " Diese Urkunde berechtigt seinen";
const string ITWr_ForgedShipLetter_MIS_3 = " Besitzer, sich auf unbestimmte Zeit auf der";
const string ITWr_ForgedShipLetter_MIS_4 = " königlichen Kriegsgaleree von Lord Hagen";
const string ITWr_ForgedShipLetter_MIS_5 = " aufzuhalten oder das Schiff zu führen.";
const string ITWr_ForgedShipLetter_MIS_6 = "     königliches Siegel";
func void UseITWr_ForgedShipLetter_MIS()
{
	var int nDocID;

// Joly:VORSICHT : Dieser Brief ist ein ERMÄCHTIGUNGSSCHREIBEN für das Schiff und kann von LEE oder dem Richter stammen. NICHT zwangsläufig von Lord Hagen oder gefälscht!!!!!!!!!

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_BookHeadline);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, ITWr_ForgedShipLetter_MIS_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book);
				Doc_PrintLine	(nDocID, 0, ITWr_ForgedShipLetter_MIS_2);
				Doc_PrintLine	(nDocID, 0, ITWr_ForgedShipLetter_MIS_3);
				Doc_PrintLine	(nDocID, 0, ITWr_ForgedShipLetter_MIS_4);
				Doc_PrintLine	(nDocID, 0, ITWr_ForgedShipLetter_MIS_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, ITWr_ForgedShipLetter_MIS_6);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1);
	Doc_Show(nDocID);
};

instance ITKE_OC_MAINGATE_MIS(C_Item)
{
	name						= "Turmschlüssel der Haupttorwache";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Key_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ITKE_SHIP_LEVELCHANGE_MIS(C_Item) // Joly: führt zum Levelchange Kapitel 6!!!!!!!!!!!!!!!!!!!!!!
{
	name						= "Kajütenschlüssel des Kapitäns";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_03.3ds";
	material					= MAT_METAL;

	value						= Value_Key_03;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItPo_PotionOfDeath_01_Mis(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItMi_Flask.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_PotionOfDeath;

	value						= 10;

	description					= "Die Tränen Innos";
	text[0]						= "";											count[0] = 0;
	text[1]						= "???";										count[1] = Mana_Essenz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseItPo_PotionOfDeath()
{
	if (hero.guild == GIL_KDF)
	{
		Wld_PlayEffect("spellFX_LIGHTSTAR_BLUE", hero, hero, 0, 0, 0, FALSE);
		Snd_Play("SFX_HealObsession");
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];

		Npc_ChangeAttribute(self, ATR_STRENGTH, 5);
		self.aivar[REAL_STRENGTH] = self.aivar[REAL_STRENGTH] + 5;
		Npc_ChangeAttribute(self, ATR_DEXTERITY, 5);
		self.aivar[REAL_DEXTERITY] = self.aivar[REAL_DEXTERITY] + 5;

		PrintScreen(PRINT_LearnSTR5, -1, 45, FONT_SCREEN, 2);
		PrintScreen(PRINT_LearnDex5, -1, 55, FONT_SCREEN, 2);
		PrintScreen(PRINT_FullyHealed, - 1, 65, FONT_Screen, 2);
		Mdl_ApplyOverlayMDSTimed(self, "HUMANS_SPRINT.MDS", Time_Speed);
	}
	else
	{
		AI_Wait(hero, 3);
		AI_PlayAni(self, "S_FIRE_VICTIM");
		Wld_PlayEffect("VOB_MAGICBURN", hero, hero, 0, 0, 0, FALSE);
		B_Say(self, self, "$Dead");
		AI_StopFX(self, "VOB_MAGICBURN");
		Npc_ChangeAttribute(self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]);
		Npc_StopAni(self, "S_FIRE_VICTIM");
	};
};

instance ItPo_PotionOfDeath_02_Mis(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItMi_Flask.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_PotionOfDeath;

	value						= 10;

	description					= "Die Tränen Innos";
	text[0]						= "";											count[0] = 0;
	text[1]						= "Magiern des Feuers verleiht dieser Trank ungeahnte Kräfte.";count[1] = 0;
	text[2]						= "Jeder andere wird den Tod finden.";			count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//************************************************
//	Amulett des Todes
//************************************************

instance ItAm_AmulettOfDeath_Mis(C_Item)
{
	name						= "Innos göttliche Aura";

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItAm_Prot_Fire_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItAm_AmulettOfDeath_Mis;
	on_unequip					= UnEquip_ItAm_AmulettOfDeath_Mis;

	value						= 1000;

	description					= "Innos göttlich Aura";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Dieses Amulett verleiht dem Träger ";		count[2] = 0;
	text[3]						= "Schutz vor jeglichem Schaden.";				count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_AMULETTE_STANDARD;
};

func void Equip_ItAm_AmulettOfDeath_Mis()
{
	self.protection [PROT_EDGE] += 30;
	self.protection [PROT_BLUNT] += 30;
	self.protection [PROT_POINT] += 30;
	self.protection [PROT_FIRE] += 30;
	self.protection [PROT_MAGIC] += 30;
	Wld_PlayEffect("spellFX_LIGHTSTAR_WHITE", self, self, 0, 0, 0, FALSE);
	Wld_PlayEffect("FX_EarthQuake", self, self, 0, 0, 0, FALSE);
	Wld_PlayEffect("spellFX_INCOVATION_WHITE", self, self, 0, 0, 0, FALSE);
	AI_PlayAni(self, "T_MAGRUN_2_HEASHOOT");
	AI_StandUp(self);
	Snd_Play("MFX_FIRERAIN_INVEST");
};

func void UnEquip_ItAm_AmulettOfDeath_Mis()
{
	self.protection [PROT_EDGE] -= 30;
	self.protection [PROT_BLUNT] -= 30;
	self.protection [PROT_POINT] -= 30;
	self.protection [PROT_FIRE] -= 30;
	self.protection [PROT_MAGIC] -= 30;
};

/******************************************************************************************/
//	Heiltrank für Randolph //
/******************************************************************************************/
instance ItPo_HealRandolph_MIS(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI | ITEM_MISSION;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItMi_Flask.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= Use_HealRandolph;

	value						= Value_HpEssenz;

	description					= "Heilung der Sucht";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Essenz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpEssenz;
};

func void Use_HealRandolph()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Essenz);
};
