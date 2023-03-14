// ##########################################################################
// ##
// ## Bookstand Animals
// ##
// ##########################################################################

// ----------------------
var int Animals_1_permanent;
// ----------------------
// ----------------------
var int Animals_2_permanent;
// ----------------------
// ----------------------
var int Animals_3_permanent;
// ----------------------

const string BookstandAnimals1_S1_1 = "Jagd und Beute";
const string BookstandAnimals1_S1_2 = "Jedes Tier und Wesen besitzt eigene Trophäen, die den Ruhm und Reichtum eines erfahrenen Jäger mehren.";
const string BookstandAnimals1_S1_3 = "Ein erfahrener Jäger weiß um die Trophäen seiner Beute und kennt die verschiedenen Methoden sie auszunehmen.";
const string BookstandAnimals1_S1_4 = "Zähne reißen";
const string BookstandAnimals1_S1_5 = "Die Zähne, sind die Waffe von vielen Tieren und Wesen. Wer darum weiß, wie er sie seiner Beute fachkundig entreißt, findet bei Wölfen, Snappern, Schattenläufern, Sumpfhaien und Trollen seine Beute.";
const string BookstandAnimals1_S1_6 = "Felle abziehen";
const string BookstandAnimals1_S1_7 = "Ein Talent das der erfahrene Jäger oft zu nutzen weiß - gibt es doch viele Tiere, deren Körper von einem Fell geschützt ist. Schafe, Wölfe und Schattenläufer um nur einige zu benennen.";
const string BookstandAnimals1_S1_8 = "Ein Jäger, der dieses Talent beherrscht, kann auch die Häute von Sumphaien und Lurkern abziehen.  ";
const string BookstandAnimals1_S1_9 = "Krallen brechen";
const string BookstandAnimals1_S1_10 = "Eine Kunst, die bei Waranen aller Art, Snappern, Lurkern und Schattenläufern eingesetzt werden kann.  ";
func void Use_BookstandAnimals1_S1() // Tierbücher
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;

		nDocID = Doc_Create();
		Doc_SetPages(nDocID, 2);
		Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
		Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

		Doc_SetFont(nDocID, -1, FONT_Book);
		Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);

		Doc_PrintLine(nDocID, 0, BookstandAnimals1_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, BookstandAnimals1_S1_2);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, BookstandAnimals1_S1_3);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, BookstandAnimals1_S1_4);
		Doc_PrintLines(nDocID, 0, BookstandAnimals1_S1_5);

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, BookstandAnimals1_S1_6);
		Doc_PrintLines(nDocID, 1, BookstandAnimals1_S1_7);
		Doc_PrintLines(nDocID, 1, BookstandAnimals1_S1_8);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, BookstandAnimals1_S1_9);
		Doc_PrintLines(nDocID, 1, BookstandAnimals1_S1_10);
		Doc_Show(nDocID);

		if (Animals_1_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			Animals_1_permanent = TRUE;
		};
	};
};

const string BookstandAnimals2_S1_1 = "Jagd und Beute";
const string BookstandAnimals2_S1_2 = "Jedes Tier und Wesen besitzt eigene Trophäen, die den Ruhm und Reichtum eines erfahrenen Jäger mehren.";
const string BookstandAnimals2_S1_3 = "Die Blutfliegen";
const string BookstandAnimals2_S1_4 = "Um diese fliegenden Teufel auszunehmen, bedarf es zwei besonderer Künste.";
const string BookstandAnimals2_S1_5 = "Zum einen können ihnen die Flügel abgetrennt, zum anderen kann der Stachel entrissen werden.";
const string BookstandAnimals2_S1_6 = "Beide Künste sollte der erfahrene Jäger einsetzen, um sich die Trophäen anzueignen.";
const string BookstandAnimals2_S1_7 = "Feldräuber und Minecrawler greifen mit Zangen an. Vor allem die Zangen der Minecrawler";
const string BookstandAnimals2_S1_8 = "gelten als besonders wertvoll, weil sie ein Sekret enthalten, das magische Kräfte steigert.";
const string BookstandAnimals2_S1_9 = "Allerdings sollte es mit Vorsicht genossen werden, da der menschliche Körper mit der Zeit nicht mehr darauf reagiert.";
const string BookstandAnimals2_S1_10 = "Ebenfalls sehr begehrt sind die Platten der Minecrawler. Aus ihnen lassen sich Rüstungen herstellen. ";

func void Use_BookstandAnimals2_S1() // Tierbücher
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;

		nDocID = Doc_Create();
		Doc_SetPages(nDocID, 2);
		Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
		Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

		Doc_SetFont(nDocID, -1, FONT_Book);
		Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);

		Doc_PrintLine(nDocID, 0, BookstandAnimals2_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, BookstandAnimals2_S1_2);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, BookstandAnimals2_S1_3);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, BookstandAnimals2_S1_4);
		Doc_PrintLines(nDocID, 0, BookstandAnimals2_S1_5);
		Doc_PrintLines(nDocID, 0, BookstandAnimals2_S1_6);

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, BookstandAnimals2_S1_7);
		Doc_PrintLines(nDocID, 1, BookstandAnimals2_S1_8);
		Doc_PrintLines(nDocID, 1, BookstandAnimals2_S1_9);
		Doc_PrintLines(nDocID, 1, BookstandAnimals2_S1_10);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, "");
		Doc_Show(nDocID);

		if (Animals_2_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			Animals_2_permanent = TRUE;
		};
	};
};

const string BookstandAnimals3_S1_1 = "Jagd und Beute";
const string BookstandAnimals3_S1_2 = "Jedes Tier und Wesen besitzt eigene Trophäen, die den Ruhm und Reichtum eines erfahrenen Jäger mehren.";
const string BookstandAnimals3_S1_3 = "Der Feuerwaran";
const string BookstandAnimals3_S1_4 = "Dieses besondere Wesen zählt zur Gattung der Warane, allerdings ist es in der Lage Feuer zu speien, das jeden der sich ihm auf ein paar Schritt nähert, unweigerlich tötet.";
const string BookstandAnimals3_S1_5 = "Nur wer sich gegen Feuer zu schützen vermag, kann sich im Kampf mit diesen Wesen messen und ihm die kostbare Zunge entreissen.";
const string BookstandAnimals3_S1_6 = "Der Schattenläufer";
const string BookstandAnimals3_S1_7 = "Der Schattenläufer ist ein uralter Einzelgänger der versteckt in Wäldern lebt.";
const string BookstandAnimals3_S1_8 = "Es gibt nur noch wenige Exemplare, so das er für den Menschen keine Gefahr mehr darstellt, solange er nicht seine Jagdrevier kreuzt.";
const string BookstandAnimals3_S1_9 = "Der Kopf des Schattenläufers wird von einem Horn gekrönt, das als wertvolle Trophäe gilt. Ein Jäger muss die Kunst lernen, das Horn richtig zu brechen,";
const string BookstandAnimals3_S1_10 = "damit er diese Trophäe bekommt.";
func void Use_BookstandAnimals3_S1() // Tierbücher
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;

		nDocID = Doc_Create();
		Doc_SetPages(nDocID, 2);
		Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
		Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

		Doc_SetFont(nDocID, -1, FONT_Book);
		Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);

		Doc_PrintLine(nDocID, 0, BookstandAnimals3_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, BookstandAnimals3_S1_2);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, BookstandAnimals3_S1_3);
		Doc_PrintLines(nDocID, 0, BookstandAnimals3_S1_4);
		Doc_PrintLines(nDocID, 0, BookstandAnimals3_S1_5);

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, BookstandAnimals3_S1_6);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, BookstandAnimals3_S1_7);
		Doc_PrintLines(nDocID, 1, BookstandAnimals3_S1_8);
		Doc_PrintLines(nDocID, 1, BookstandAnimals3_S1_9);
		Doc_PrintLines(nDocID, 1, BookstandAnimals3_S1_10);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");

		Doc_Show(nDocID);

		if (Animals_3_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			Animals_3_permanent = TRUE;
		};
	};
};
