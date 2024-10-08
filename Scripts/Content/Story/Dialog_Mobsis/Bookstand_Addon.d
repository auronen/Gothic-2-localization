//*************************************
//	Buchständer im Banditenlager
//*************************************

const string Bookstand_Addon_BL_S1_1 = "Mine";
const string Bookstand_Addon_BL_S1_2 = "Crimson: 79 Goldbrocken erhalten und eingeschmolzen";
const string Bookstand_Addon_BL_S1_3 = "Scatty: Waren für 250 Gold erhalten";
const string Bookstand_Addon_BL_S1_4 = "Garaz: 6 Goldbrocken erhalten";
const string Bookstand_Addon_BL_S1_5 = "Alle Wachen: 9 Goldbrocken erhalten";
const string Bookstand_Addon_BL_S1_6 = "Lager:  ";
const string Bookstand_Addon_BL_S1_7 = "Raven's Garde: 25 Goldstücke";
const string Bookstand_Addon_BL_S1_8 = "Finn: 60 Goldstücke";
const string Bookstand_Addon_BL_S1_9 = "Lennar: 40 Goldstücke";
const string Bookstand_Addon_BL_S1_10 = "Emilio: 50 Goldstücke";
const string Bookstand_Addon_BL_S1_11 = "Andere: 20 Goldstücke";
const string Bookstand_Addon_BL_S1_12 = "Huno, Fisk, Snaf: je nach Waren";
const string Bookstand_Addon_BL_S1_13 = "Jäger: Soll sich der Anführer drum kümmern! Franco 7 Goldbrocken erhalten";
func void Use_Bookstand_Addon_BL_S1()
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

		Doc_PrintLine(nDocID, 0, Bookstand_Addon_BL_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Addon_BL_S1_2);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Addon_BL_S1_3);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Addon_BL_S1_4);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Addon_BL_S1_5);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLines(nDocID, 0, "");

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, Bookstand_Addon_BL_S1_6);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_7);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_8);
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_9);
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_10);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_11);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_12);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_13);
		Doc_Show(nDocID);
	};
};

// ##########################################################################
// ##
// ## SteinPult
// ##
// ##########################################################################

// ----------------------
var int BookstandMayaHierchary_1_permanent;
var int BookstandMayaHierchary_2_permanent;
var int BookstandMayaHierchary_3_permanent;
var int BookstandMayaHierchary_4_permanent;
var int BookstandMayaHierchary_5_permanent;
var int BookstandMayaArt;
// ----------------------
func int C_CanReadBookStand()
{
	if ((PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	|| (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_2] == TRUE)
	|| (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_3] == TRUE))
	{
		return TRUE;
	};
};

const string BookstandMaya_1 = "...denn nur den TOTENWÄCHTERN war es möglich die Ahnen zu rufen. ";
const string BookstandMaya_2 = "Ihre Abwesenheit schmerzt tief. Ohne den Rat der Ahnen sind wir der Willkür unseres Volkes ausgeliefert.";
const string BookstandMaya_3 = "Die HEILER wurden entsandt, das Portal zu versiegeln und den Schlüssel zu vernichten. Nur Adanos weiß, was mit ihnen geschah und ob sie ihr Ziel jemals erreichten.";
const string BookstandMaya_4 = "Die KRIEGERKASTE ist vernichtet durch den Zorn Adanos. Das Herz des alten Kriegerfürsten ist gebrochen. ";
const string BookstandMaya_5 = "Nur die verbliebenen PRIESTER schüren noch die Hoffnung und predigen unablässig von der Wiederauferstehung unserer einst so prächtigen Stadt. ";
const string BookstandMaya_6 = "Doch wir, die GELEHRTEN, kennen die bittere Wahrheit. JHARKENDAR ist gefallen und wird im Strom der Zeit vergehen.";
const string BookstandMaya_7 = "RHADEMES war auf immer eingeschlossen im Tempel ADANOS, doch die Macht des Schwertes war nicht gebrochen.";
const string BookstandMaya_8 = "Sein Einfluss war schon zu groß geworden. Das Morden in den Strassen wollte nicht enden.";
const string BookstandMaya_9 = "ADANOS Zorn war es, der alles beendete. Das Meer erhob sich über JHARKENDAR und überflutete die ganze Stadt.";
const string BookstandMaya_10 = "Nur noch die höher gelegenen Tempel und Bauwerke waren nahezu unangetastet geblieben.";
const string BookstandMaya_11 = "Die wenigen, die diese Katastrophe überlebten, hatten nunmehr nicht mehr die Kraft, die Stadt wieder aufzubauen.";
const string BookstandMaya_12 = "Und so war das Schicksal von JHARKENDAR besiegelt.";
const string BookstandMaya_13 = "QUARHODRONs Alter machte es ihm unmöglich, unser Heer zu führen. Und so bestanden die Priester auf ihrem Recht der Befehlsgewalt über ihn.";
const string BookstandMaya_14 = "Sie wiesen ihn an, sein Amt niederzulegen und das Schwert weiterzugeben.";
const string BookstandMaya_15 = "Der Rat der Fünf sollte seine Nachfolge bestimmen. Doch die Kaste der Krieger verweigerte dem Rat die Wahl.";
const string BookstandMaya_16 = "Die Krieger wollten sich nicht länger dem Rat der Fünf fügen und erwählten seinen Sohn RHADEMES zu ihrem neuen Anführer. ";
const string BookstandMaya_17 = "Aus Stolz und Vertrauen in sein eigen Fleisch und Blut erschied QUARHODRON sich dazu, ihnen nachzugeben.";
const string BookstandMaya_18 = "Er überreichte das Schwert seinem Sohn in der Hoffnung, dass er es mit der gleichen starken Hand führen möge, wie er selbst es einst tat.";
const string BookstandMaya_19 = "RHADEMES war schwach. Der Wille des Schwertes übermannte ihn und machte ihn zu seinem Werkzeug.";
const string BookstandMaya_20 = "Das Leid und die Grausamkeiten, die er in seiner Verblendung über unser Volk brachte, vermochten nicht einmal mehr die Heiler zu lindern. ";
const string BookstandMaya_21 = "Das Schwert erkannte schnell, das das Volk zu schwach war um seine Pläne zu durchkreuzen.";
const string BookstandMaya_22 = "Allein die Macht unserer Ahnen konnte ihm noch gefährlich werden. ";
const string BookstandMaya_23 = "Und so ließ es RHADEMES alle Totenwächter verbannen oder hinrichten, und machte so jede Hoffnung auf Erlösung von diesem Übel zunichte.";
const string BookstandMaya_24 = "So war kein einziger der Totenwächter mehr zugegen, als die verbliebenen vier entmachteten Anführer unseres Volkes den bitteren Entschluss fassten, JHARKENDAR aufzugeben.";
const string BookstandMaya_25 = "Der Krieg tobte in den Strassen, als die Heiler aufbrachen, um den einzigen Zugang zu unserem Tal für immer zu verschliessen.";
const string BookstandMaya_26 = "QUARHODRON, der Hohepriester KHARDIMON und ich selbst berieten in diesen Hallen über einen Weg, RHADEMES und das Schwert zu bezwingen.";
const string BookstandMaya_27 = "QUARHODRON und KHARDIMON waren der Meinung, RHADEMES mit vereinten Kräften im Kampf besiegen zu können. Doch ich kannte die Macht des Schwertes zu gut, um daran glauben zu können.";
const string BookstandMaya_28 = "So machte ich von meinem Recht Gebrauch, die Entscheidung der beiden anderen zu überstimmen. Ich beschloß stattdessen, RHADEMES mit einer List zu überwinden.";
const string BookstandMaya_29 = "QUARHODRON folgte der Entscheidung des Rates. Er begab sich in den Tempel Adanos und schickte nach seinem Sohn.";
const string BookstandMaya_30 = "Der Hass seines Sohnes hatte schon solche Gestalt angenommen, daß RHADEMES in wilder Raserei in den Tempel stürmte, um seinen Vater zu richten.";
const string BookstandMaya_31 = "Er erkannte unsere Pläne erst, als es für ihn zu spät war.";
const string BookstandMaya_32 = "QUARHODRON verschloss die heiligen Kammern des Tempels hinter sich, und RHADEMES war für alle Zeiten im Tempel gefangen.";
func void Use_BookstandMaya()
{
	if (BookstandMayaArt == 1) // Joly: überall objektieren!
	{
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_1);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_2);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_3);

		Doc_SetMargins(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_4);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_5);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_6);
		Doc_PrintLines(StPl_nDocID, 1, "");
	}
	else if (BookstandMayaArt == 2) // Joly: objektieren egal wo, nur nicht Entrance.
	{
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_7);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_8);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_9);

		Doc_SetMargins(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_10);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_11);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_12);

		if (SC_Knows_WeaponInAdanosTempel == FALSE)
		{
			B_GivePlayerXP(XP_Ambient);
			SC_Knows_WeaponInAdanosTempel = TRUE;
		};
	}
	else if (BookstandMayaArt == 3)
	{
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_13);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_14);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_15);

		Doc_SetMargins(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_16);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_17);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_18);
	}
	else if (BookstandMayaArt == 4)
	{
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_19);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_20);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_21);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_22);
		Doc_PrintLine(StPl_nDocID, 0, "");

		Doc_SetMargins(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_23);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_24);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_25);
	}
	else if (BookstandMayaArt == 5)
	{
		Doc_PrintLines(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_26);
		Doc_PrintLines(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_27);
		Doc_PrintLines(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_28);

		Doc_SetMargins(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLines(StPl_nDocID, 1, "");

		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_29);
		Doc_PrintLines(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_30);
		Doc_PrintLines(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_31);
		Doc_PrintLines(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_32);

		Doc_PrintLines(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, "");
	};
};

func void InitUse_BookstandMaya()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		if (C_CanReadBookStand() == FALSE)
		{
			StPl_nDocID =
			Doc_Create(); // DocManager
			Doc_SetPages(StPl_nDocID, 2);
			Doc_SetPage(StPl_nDocID, 0, "Book_MayaGlyph_L.tga", 0);
			Doc_SetPage(StPl_nDocID, 1, "Book_MayaGlyph_R.tga", 0);
			Doc_SetFont(StPl_nDocID, -1, FONT_Book);
			Doc_SetMargins(StPl_nDocID, 0, 275, 20, 30, 20, 1);

			/*
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Oksefd nodnf Kwe");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Sebnejbuwd Weinafiwjf Ihweqpjrann");
			Doc_PrintLines(StPl_nDocID, 0, "Erfjkemvefj Hwoqmnyhan ckh");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Revfnbrebuiwe ewohjfribwe wefa");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Ejkhfshduhweb isdh Thjdkad");
			Doc_PrintLines(StPl_nDocID, 0, "asdkejhnead Gakjesdhad Uhand");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Ihdah Zanshen");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Fjewheege Egadegsmkd Ygec slaje ");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Esfj ewzbfujbwe Iuhdfb");

			Doc_SetMargins(StPl_nDocID, -1, 30, 20, 275, 20, 1);
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Siehdkhnfv Ghlorka");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Jomaghe Ohramja");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Bam klod Heknaud");
			Doc_PrintLines(StPl_nDocID, 1, "Wokan fadudeksJuh");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Jhdy funikha ");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Ehnep Fhika Oiritan");
			Doc_PrintLines(StPl_nDocID, 1, "Oiritan Gkoropjia Onham");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Filiothak Juhama Penn");
			Doc_PrintLines(StPl_nDocID, 1, "Vorsiehal Kiman Sik");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Fjewheege Egdgsmkd Ygc slje ");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Oznishdz gdo sek ie");
		*/
			Doc_Show(StPl_nDocID);
			B_Say(self, self, "$CANTREADTHIS");
		}
		else
		{
			if (C_CanReadBookStand())
			{
				StPl_nDocID =
				Doc_Create(); // DocManager
				Doc_SetPages(StPl_nDocID, 2);
				Doc_SetPage(StPl_nDocID, 0, "Book_MayaRead_L.tga", 0);
				Doc_SetPage(StPl_nDocID, 1, "Book_MayaRead_R.tga", 0);
				Doc_SetFont(StPl_nDocID, -1, FONT_Book);
				Doc_SetMargins(StPl_nDocID, 0, 275, 20, 30, 20, 1);
				Use_BookstandMaya();
				Doc_Show(StPl_nDocID);
			};
		};
	};

	BookstandMayaArt = 0;
};

func void Use_BookstandMayaHierchary_01_S1()
{
	BookstandMayaArt = 1;
	InitUse_BookstandMaya();
	if ((BookstandMayaHierchary_1_permanent == FALSE)
	&& (C_CanReadBookStand()))
	{
		B_GivePlayerXP(XP_Ambient);
		BookstandMayaHierchary_1_permanent = TRUE;
	};
};

func void Use_BookstandMayaHierchary_02_S1()
{
	BookstandMayaArt = 2;
	InitUse_BookstandMaya();

	if ((BookstandMayaHierchary_2_permanent == FALSE)
	&& (C_CanReadBookStand()))
	{
		B_GivePlayerXP(XP_Ambient);
		BookstandMayaHierchary_2_permanent = TRUE;
	};
};

func void Use_BookstandMayaHierchary_03_S1()
{
	BookstandMayaArt = 3;
	InitUse_BookstandMaya();

	if ((BookstandMayaHierchary_3_permanent == FALSE)
	&& (C_CanReadBookStand()))
	{
		B_GivePlayerXP(XP_Ambient);
		BookstandMayaHierchary_3_permanent = TRUE;
	};
};

func void Use_BookstandMayaHierchary_04_S1()
{
	BookstandMayaArt = 4;
	InitUse_BookstandMaya();

	if ((BookstandMayaHierchary_4_permanent == FALSE)
	&& (C_CanReadBookStand()))
	{
		B_GivePlayerXP(XP_Ambient);
		BookstandMayaHierchary_4_permanent = TRUE;
	};
};

func void Use_BookstandMayaHierchary_05_S1()
{
	BookstandMayaArt = 5;
	InitUse_BookstandMaya();

	if ((BookstandMayaHierchary_5_permanent == FALSE)
	&& (C_CanReadBookStand()))
	{
		B_GivePlayerXP(XP_Ambient);
		BookstandMayaHierchary_5_permanent = TRUE;
	};
};
