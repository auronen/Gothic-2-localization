//**********************************************************************************
//	Brief von Lucia an William
//**********************************************************************************
instance ITWr_Addon_Hinweis_02(C_Item)
{
	name						= "Wichtiger Hinweis";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Hinweis_02;

	value						= 250;

	description					= name;
	text[0]						= "Aus der Kneipe im Banditenlager";			count[0] = 0;
};

const string Hinweis_02_1 = "Hey Leute,";
const string Hinweis_02_2 = "Lou ist im Sumpf verschwunden, wahrscheinlich wurde er von den Haien gefressen.";
const string Hinweis_02_3 = "Viel schlimmer ist - mit ihm ist auch der Tür Schlüssel verschwunden.";
const string Hinweis_02_4 = "Also wer ihn findet, kann Lou's Kram behalten.";
const string Hinweis_02_5 = "Snaf";
func void Use_Hinweis_02()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Hinweis_02_1);
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Hinweis_02_2);
				Doc_PrintLines	(nDocID, 0, Hinweis_02_3);
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Hinweis_02_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Hinweis_02_5);
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Heiltrunk
//**********************************************************************************
instance ITWr_Addon_Health_04(C_Item)
{
	name						= "Heiltrunk- Rezept";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Heilrezept_04;

	value						= 1000;

	description					= "Reine Lebensenergie";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Zur Herstellung eines mächtigen Trunks.";	count[2] = 0;
	text[3]						= "Zur Anwendung ist das Wissen über Elixiere der Heilung erforderlich.";count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string Heilrezept_04_1 = "Herstellung eines Heiltrunkes:";
const string Heilrezept_04_2 = "Benötigt wird ein Feldknöterich, sowie drei Essenzen der Heilung.";
const string Heilrezept_04_3 = "Zusammenkippen und aufbrühen nach dem Rezept der Heilungs - Elixiere. ";
const string Heilrezept_04_4 = "Dieser Trank kann nur von einem Alchemisten erstellt werden, der das Rezept der Heilungs - Elixiere kennt.";
func void Use_Heilrezept_04()
{
	var int nDocID;

	if (Npc_IsPlayer(self))
	{
		if (PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE)
		{
			PLAYER_TALENT_ALCHEMY[POTION_Health_04] = TRUE;
			Snd_Play("LevelUP");
			B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_1);
		};
	};

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Heilrezept_04_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Heilrezept_04_2);
				Doc_PrintLines	(nDocID, 0, Heilrezept_04_3);
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Heilrezept_04_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Manatrunk
//**********************************************************************************
instance ITWr_Addon_Mana_04(C_Item)
{
	name						= "Mana - Rezept";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Manarezept_04;

	value						= 1500;

	description					= "Reines Mana";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "Zur Herstellung eines mächtigen Trunks.";	count[2] = 0;
	text[3]						= "Zur Anwendung ist das Wissen über Mana - Elixiere erforderlich.";count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string Manarezept_04_1 = "Herstellung eines Manatrunkes:";
const string Manarezept_04_2 = "Benötigt wird ein Feldknöterich, sowie drei Essenzen magischer Kraft.";
const string Manarezept_04_3 = "Zusammenkippen und aufbrühen nach dem Rezept der Mana - Elixiere. ";
const string Manarezept_04_4 = "Dieser Trank kann nur von einem Alchemisten erstellt werden, der das Rezept der Mana -Elixiere kennt.";
func void Use_Manarezept_04()
{
	var int nDocID;

	if (Npc_IsPlayer(self))
	{
		if (PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE)
		{
			PLAYER_TALENT_ALCHEMY[POTION_Mana_04] = TRUE;
			Snd_Play("LevelUP");
			B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_2);
		};
	};

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Manarezept_04_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Manarezept_04_2);
				Doc_PrintLines	(nDocID, 0, Manarezept_04_3);
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Manarezept_04_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Brief von Lucia an William
//**********************************************************************************
instance ITWr_Addon_Hinweis_01(C_Item)
{
	name						= "Wichtiger Hinweis";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Hinweis_01;

	value						= 250;

	description					= name;
	text[0]						= "Hing an einer Hütte im Sumpf";				count[0] = 0;
};

const string Hinweis_01_1 = "Hey Leute,";
const string Hinweis_01_2 = "Das Zeug in den Truhen ist für Notfälle gedacht. ";
const string Hinweis_01_3 = "Und es ist für ALLE da. Also nehmt euch nur was, falls ihr was davon braucht.";
const string Hinweis_01_4 = "Und nehmt nur soviel ihr braucht.";
const string Hinweis_01_5 = "Wenn sich alle daran halten, dann klappt es auch.";
const string Hinweis_01_6 = "Fletcher";
func void Use_Hinweis_01()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Hinweis_01_1);
				Doc_PrintLines	(nDocID, 0, Hinweis_01_2);
				Doc_PrintLines	(nDocID, 0, Hinweis_01_3);
				Doc_PrintLines	(nDocID, 0, Hinweis_01_4);
				Doc_PrintLines	(nDocID, 0, Hinweis_01_5);
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Hinweis_01_6);
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Brief von Lucia an William
//**********************************************************************************
instance ITWr_Addon_William_01(C_Item)
{
	name						= "Notiz";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_William_01;

	value						= 250;

	description					= name;
	text[0]						= "Diese Notiz hatte der Fischer William bei sich.";count[0] = 0;
};

const string William_01_1 = "William,";
const string William_01_2 = "Wenn der Mond im vollen Licht steht, wird die Wache abgelenkt sein.";
const string William_01_3 = "Schleich dich raus - aber sei vorsichtig!";
const string William_01_4 = "Wenn du dem Knüppeldamm folgst, kannst du den Sumpf verlassen.";
const string William_01_5 = "Das Piratenlager liegt auf der anderen Seite des Tals weit im Westen. ";
const string William_01_6 = "Von dort sollte es dir ein leichtes sein mit dem Boot zu entkommen. ";
const string William_01_7 = "Jemand der es gut mit dir meint";
func void Use_William_01()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, William_01_1);
				Doc_PrintLines	(nDocID, 0, William_01_2);
				Doc_PrintLines	(nDocID, 0, William_01_3);
				Doc_PrintLines	(nDocID, 0, William_01_4);
				Doc_PrintLines	(nDocID, 0, William_01_5);
				Doc_PrintLines	(nDocID, 0, William_01_6);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, William_01_7);
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Rezept von Miguel (Minecrawler Trank)
//**********************************************************************************
instance ITWr_Addon_MCELIXIER_01(C_Item)
{
	name						= "Rezept";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_MCELIXIER_01;

	value						= 250;

	description					= name;
	text[0]						= "Rezept für den Elixier der Geistveränderung.";count[0] = 0;
	text[1]						= "Dieser Trank hilft verlorenen Erinnerung zurück zu bringen.";count[1] = 0;
};

const string MCELIXIER_01_1 = "Elixier der Geistveränderung";
const string MCELIXIER_01_2 = "Zur Herstellung des Trankes erforderlich, ist das Sekret aus zwei Blutfliegenstacheln.";
const string MCELIXIER_01_3 = "Dazu gibt man ein Mana Extrakt, sowie eine Essenz der Heilung.";
const string MCELIXIER_01_4 = "Abschließend wird in den köchelnden Sud ein Beutel roter Tränen - Pfeffer gerührt.";
const string MCELIXIER_01_5 = "Nur ein kundigen Alchemist, der weiß wie das Sekret aus den Stacheln zu entnehmen ist, sollte sich an dem Trank versuchen. ";
func void Use_MCELIXIER_01()
{
	Knows_MCELIXIER = TRUE;
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, MCELIXIER_01_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, MCELIXIER_01_2);
				Doc_PrintLines	(nDocID, 0, MCELIXIER_01_3);
				Doc_PrintLines	(nDocID, 0, MCELIXIER_01_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, MCELIXIER_01_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Deal Brief von Esteban an zwei Piraten
//**********************************************************************************
instance ITWr_Addon_Pirates_01(C_Item)
{
	name						= "Schmieriger Zettel";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Pirates_01;

	value						= 250;

	description					= name;
	text[0]						= "Diesen Zettel hatte Angus in der Tasche.";	count[0] = 0;
};

const string Pirates_01_1 = "Ihr Piraten,";
const string Pirates_01_2 = "Besorgt die letzte Lieferung, die für uns bestimmt ist.";
const string Pirates_01_3 = "Bringt sie dann zu eurer Höhle. Dort treffen wir uns.";
const string Pirates_01_4 = "Ich bezahle euch den doppelten Wert in Gold.";
const string Pirates_01_5 = "So wird's gemacht";
const string Pirates_01_6 = "Tom";
func void Use_Pirates_01()
{
	Read_JuansText = TRUE;

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, Pirates_01_1);
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Pirates_01_2);
				Doc_PrintLine	(nDocID, 0, Pirates_01_3);
				Doc_PrintLines	(nDocID, 0, Pirates_01_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Pirates_01_5);
				Doc_PrintLine	(nDocID, 0, Pirates_01_6);
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Rezept für grünene Novizen
//**********************************************************************************
instance ITWr_Addon_Joint_01(C_Item)
{
	name						= "Der grüne Novize";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Joint_Rezept_01;

	value						= 250;

	description					= name;
	text[0]						= "Lag in der Truhe von Fortuno";				count[0] = 0;
};

const string Joint_Rezept_01_1 = "Der grüne Novize";
const string Joint_Rezept_01_2 = "(...) Die Stengel lassen sich zwar prima drehen, aber was wir im Sumpflager hatten, war von anderem Kaliber.";
const string Joint_Rezept_01_3 = "Wenn ich die Essenz aus zwei Sumpfkrautpflanzen verwende, und dazu einen Feldknöterich, dann habe ich einen Stengel mit der Wirkung des grünen Novizen.";
const string Joint_Rezept_01_4 = "Der grüne Novize hilft gegen Schmerzen jeder Art und macht einen klaren Kopf.";
func void Use_Joint_Rezept_01()
{
	var int nDocID;

	Green_Extrem = TRUE;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, Joint_Rezept_01_1);
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Joint_Rezept_01_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Joint_Rezept_01_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Joint_Rezept_01_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Schnapsbrennen Rezept
//**********************************************************************************
instance ITWr_Addon_Lou_Rezept(C_Item)
{
	name						= "Rezept für Lou's Hammer";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseLouRezept;

	value						= 70;

	description					= name;
	text[0]						= "Rezept zur Herstellung von Lou's Hammer.";	count[0] = 0;
};

const string LouRezept_1 = "Lou's Hammer Rezept";
const string LouRezept_2 = "Zutaten für ein Hammergebräu:";
const string LouRezept_3 = "Man nehme eine Wasserflasche, sowie 2 Rüben und 'ne ordentliche Portion Sumpfkraut.";
const string LouRezept_4 = "Dazu gemahlene Zähne von einem Sumpfhai.";
const string LouRezept_5 = "Alles zusammen in die Flasche kippen und mit einem Schuß Rum abkochen.";
const string LouRezept_6 = "Prost.";
const string LouRezept_7 = "Laut dem blinden alten Mann ist es gesünder, die Dämpfe nicht einzuatmen!";
func void UseLouRezept()
{
	Knows_LousHammer = TRUE;

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, LouRezept_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, LouRezept_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, LouRezept_3);
				Doc_PrintLines	(nDocID, 0, LouRezept_4);
				Doc_PrintLines	(nDocID, 0, LouRezept_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, LouRezept_6);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, LouRezept_7);
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Doppelhammer
//**********************************************************************************
instance ITWr_Addon_Lou_Rezept2(C_Item)
{
	name						= "Rezept für Lou's Doppelhammer";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseLouRezept2;

	value						= 140;

	description					= name;
	text[0]						= "Rezept zur Herstellung von Lou's Doppelhammer.";count[0] = 0;
};

const string LouRezept2_1 = "Lou's Doppelhammer";
const string LouRezept2_2 = "Man nimmt den guten alten Lou's Hammer und destilliert ihn nochmal.";
const string LouRezept2_3 = "Dieses Mischung sollte nur von erfahrenen Schnapsbrennern hergestellt werden.";
const string LouRezept2_4 = "Wenn sich ein Laie daran versucht, wird er nicht nur blind, sondern auch tot sein.";
func void UseLouRezept2()
{
	Knows_SchlafHammer = TRUE;

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, LouRezept2_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, LouRezept2_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, LouRezept2_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, LouRezept2_4);

	Doc_Show(nDocID);
};

//**********************************************************************************
//	Piratentod
//**********************************************************************************
instance ITWr_Addon_Piratentod(C_Item)
{
	name						= "Schneller Hering";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseRezeptPiratentod;

	value						= 250;

	description					= name;
	text[0]						= "Rezept zur Herstellung des Schnellen Herings.";count[0] = 0;
};

const string RezeptPiratentod_1 = "Schneller Hering (von mir)";
const string RezeptPiratentod_2 = "Kleiner Muntermacher für echte Kerle";
const string RezeptPiratentod_3 = "Man braucht wie üblich eine Wasserflasche. Diese füllst du mit einer Einheit Rum, dazu gibst du einen frischen Fisch.";
const string RezeptPiratentod_4 = "Sobald die Flüssigkeit beginnt sich gelb zu färben, nimmst du den Fisch heraus und rundest das ganze mit einem Bund";
const string RezeptPiratentod_5 = "frisch gepflückten Snapperkraut ab.";
const string RezeptPiratentod_6 = "Vorsicht. Das Zeug hat 'nen starken Abgang.";
func void UseRezeptPiratentod()
{
	Knows_SchnellerHering = TRUE;

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, RezeptPiratentod_1);
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, RezeptPiratentod_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, RezeptPiratentod_3);
				Doc_PrintLines	(nDocID, 0, RezeptPiratentod_4);
				Doc_PrintLines	(nDocID, 0, RezeptPiratentod_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, RezeptPiratentod_6);
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

// ------------------------------------------------------------------------------------------
instance Fakescroll_Addon(C_Item)
{
	name						= "Ein Blatt Papier";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	hp							= 5;
	hp_max						= 5;
	weight						= 1;

	visual						= "Fakescroll.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// ------------------------------------------------------------------------------------------
instance ItWr_Addon_AxtAnleitung(C_ITEM)
{
	name						= "Anleitung Banditenaxt";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseAxtAnleitung;

	value						= 250;

	description					= name;
	text[0]						= "Anleitung zum Bau einer leichten, scharfen Axt";count[0] = 0;
};

const string AxtAnleitung_1 = "Die Banditenaxt";
const string AxtAnleitung_2 = "Eine einhändige Axt";
const string AxtAnleitung_3 = "Ein Mann der die Grundsätze des Schmiedens beherrscht, kann eine besondere Axt herstellen. ";
const string AxtAnleitung_4 = "Dazu braucht man zwei Stücke heißes Roheisen.";
const string AxtAnleitung_5 = "Einen Brocken Erz und dreimal Zähne von Wölfen, Snappern oder ähnlichem Getier.";
const string AxtAnleitung_6 = "Erz und Zähne zusammen mit dem Eisen am Amboß zusammenhauen.";
const string AxtAnleitung_7 = "Eine solche Axt läßt sich sehr leicht führen und macht ordentlich Schaden.";
func void UseAxtAnleitung()
{
	if (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 1)
	{
		Knows_Banditenaxt = TRUE;
	};

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, AxtAnleitung_1);
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, AxtAnleitung_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, AxtAnleitung_3);
				Doc_PrintLines	(nDocID, 0, AxtAnleitung_4);
				Doc_PrintLines	(nDocID, 0, AxtAnleitung_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, AxtAnleitung_6);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, AxtAnleitung_7);
				Doc_PrintLines	(nDocID, 0, "");
	Doc_Show(nDocID);
};

// ------------------------------------------------------------------------------------------
instance ItWr_Addon_SUMMONANCIENTGHOST(C_ITEM)
{
	name						= "'Quarhodron' Beschwören";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseSummonAncientGhost;

	value						= 250;

	description					= name;
	text[0]						= "Mit dieser Schriftrolle kann man Quarhodron beschwören.";count[0] = 0;
};

func void UseSummonAncientGhost()
{
	if (SC_SummonedAncientGhost == FALSE)
	{
		B_Say(self, self, "$ADDON_SUMMONANCIENTGHOST");

		if (Npc_GetDistToWP(self, "ADW_ANCIENTGHOST") < 1000)
		{
			Wld_InsertNpc(NONE_ADDON_111_Quarhodron, "ADW_ANCIENTGHOST");
			Wld_PlayEffect("spellFX_Maya_Ghost", NONE_ADDON_111_Quarhodron, NONE_ADDON_111_Quarhodron, 0, 0, 0, FALSE);
			Wld_PlayEffect("SPELLFX_LIGHTSTAR_WHITE", NONE_ADDON_111_Quarhodron, NONE_ADDON_111_Quarhodron, 0, 0, 0, FALSE);
			Snd_Play("MFX_GhostVoice");
			Snd_Play("MFX_Firestorm_Cast");
			Snd_Play("MFX_Lightning_Origin");
			SC_SummonedAncientGhost = TRUE;
		}
		else
		{
			B_Say(self, self, "$ADDON_ANCIENTGHOST_NOTNEAR");
		};
	};
};

//////////////////////////////////////////////////////////////////////////////
//
//	MAPS
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_Map_AddonWorld(C_Item)
{
	name						= "Das vergessene Tal der Erbauer.";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Map_AddonWorld;

	value						= 250;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_Map_AddonWorld()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_AddonWorld);
	};

	var int Document;
	Document = Doc_CreateMap();
	Doc_SetPages(Document, 1);
	Doc_SetPage(Document, 0, "Map_AddonWorld.tga", TRUE); // TRUE = scale to fullscreen
	Doc_SetLevel(Document, "Addon\AddonWorld.zen");
	Doc_SetLevelCoords(Document, -47783, 36300, 43949, -32300);
	// Joly:Doc_SetLevelCoords(Document, -47783, 36300, 43949, -32300);
	// Nico:Doc_SetLevelCoords(Document, -43000, 39000, 43000, -29000);
	Doc_Show(Document);
};
