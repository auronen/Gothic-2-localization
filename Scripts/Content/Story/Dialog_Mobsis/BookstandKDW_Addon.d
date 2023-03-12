// -------------------------------------------------------------------------------------
//				Runensteine Wassermagie
// -------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------
//				Runen des ersten Kreises und ihre Ingredenzien
// -------------------------------------------------------------------------------------
const string Runemaking_KDW_CIRC1_S1_1 = "Die Kreise des Wassers";
const string Runemaking_KDW_CIRC1_S1_2 = "Die Runen des Wassers und die zu deren Herstellung benötigten Ingredenzien ";
const string Runemaking_KDW_CIRC1_S1_3 = "Wirbelwind";
const string Runemaking_KDW_CIRC1_S1_4 = "Flügel einer Blutfliege";
const string Runemaking_KDW_CIRC1_S1_5 = "Eislanze";
const string Runemaking_KDW_CIRC1_S1_6 = "Gletscherquartz";
const string Runemaking_KDW_CIRC1_S1_7 = "Geysir";
const string Runemaking_KDW_CIRC1_S1_8 = "Aquamarin";
const string Runemaking_KDW_CIRC1_S1_9 = "Unwetter";
const string Runemaking_KDW_CIRC1_S1_10 = "Gletscherquartz";
const string Runemaking_KDW_CIRC1_S1_11 = "Flügel einer Blufliege";
const string Runemaking_KDW_CIRC1_S1_12 = "Wasserfaust";
const string Runemaking_KDW_CIRC1_S1_13 = "Aquamarin";
const string Runemaking_KDW_CIRC1_S1_14 = "Bergkristall";
const string Runemaking_KDW_CIRC1_S1_15 = "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich.";
const string Runemaking_KDW_CIRC1_S1_16 = "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen.";
const string Runemaking_KDW_CIRC1_S1_17 = "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen.";
func void Use_Runemaking_KDW_CIRC1_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;

		nDocID = Doc_Create();
		Doc_SetPages(nDocID, 2);
		Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
		Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

		Doc_SetFont(nDocID, -1, FONT_Book);
		Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);

		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Runemaking_KDW_CIRC1_S1_2);
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_3);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_4);
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_5);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_6);
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_7);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_8);
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_9);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_10);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_11);
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_12);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_13);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_14);
		Doc_PrintLine(nDocID, 0, "");

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");

		Doc_PrintLines(nDocID, 1, Runemaking_KDW_CIRC1_S1_15);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Runemaking_KDW_CIRC1_S1_16);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Runemaking_KDW_CIRC1_S1_17);
		Doc_Show(nDocID);
	};
};

func void Use_Runemaking_KDW_CIRC2_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

func void Use_Runemaking_KDW_CIRC3_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

func void Use_Runemaking_KDW_CIRC4_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

func void Use_Runemaking_KDW_CIRC5_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

func void Use_Runemaking_KDW_CIRC6_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};
