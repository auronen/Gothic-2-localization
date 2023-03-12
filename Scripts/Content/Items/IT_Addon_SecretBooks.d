// ---------------------------------------------------------------------------------------------------------------------------
const int BookLp2 = 2;
const int BookLp3 = 3;
const int BookLp5 = 5;
const int BookLp8 = 8;

const int BookXP250 = 250;
const int BookXP500 = 500;
const int BookXP1000 = 1000;

const int LPMultiplier = 1000;
const int XPMultiplier = 5;
// ---------------------------------------------------------------------------------------------------------------------------
//		USEFUNC wird von allen LP Büchern benutzt
// ---------------------------------------------------------------------------------------------------------------------------
func void UseLPBook(var int constanze)
{
	var int Wert;
	Wert = constanze;

	if (Npc_IsPlayer(self))
	{
		B_Say_Overlay(self, self, "$VERSTEHE");
		Snd_Play("Levelup");
		self.lp = self.lp + constanze;

		var string ConcatText;
		ConcatText = ConcatStrings(PRINT_LearnLP, IntToString(constanze));

		Print(ConcatText);
	};
};

// ---------------------------------------------------------------------------------------------------------------------------
//		USEFUNC wird von allen XP Büchern benutzt
// ---------------------------------------------------------------------------------------------------------------------------
func void UseXPBook(var int constanze)
{
	var int Wert;
	Wert = constanze;

	if (Npc_IsPlayer(self))
	{
		B_Say_Overlay(self, self, "$VERSTEHE");
		Snd_Play("Levelup");
		self.exp = self.exp + constanze;

		var string ConcatText;
		ConcatText = ConcatStrings(PRINT_XPGained, IntToString(constanze));

		Print(ConcatText);
	};
};

/*
Gesammelte Erfahrungen
Erfahrung + 250 / 500 / 1000
10 * Pkt.

*/
// ---------------------------------------------------------------------------------------------------------------------------
//				Xpunktbücher
// ---------------------------------------------------------------------------------------------------------------------------
prototype ItWr_Addon_XPBook(C_ITEM)
{
	name = "Gesammelte Erfahrungen";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	visual = "ItWr_Book_02_01.3ds";
	material = MAT_LEATHER;

	scemeName = "MAPSEALED";

	description = name;
	TEXT[0] = PRINT_XPGained;

	TEXT[5] = NAME_Value;
};

// ---------------------------------------------------------------------------------------------------------------------------
instance ItWr_Addon_BookXP250(ItWr_Addon_XPBook)
{
	value = (BookXP250 * XPMultiplier);
	COUNT[0] = BookXP250;
	on_state[0] = UseBookXP250;
	COUNT[5] = value;
};

func void UseBookXP250()
{
	UseXPBook(BookXP250);
};

// ---------------------------------------------------------------------------------------------------------------------------
instance ItWr_Addon_BookXP500(ItWr_Addon_XPBook)
{
	value = (BookXP500 * XPMultiplier);
	COUNT[0] = BookXP500;
	on_state[0] = UseBookXP500;
	COUNT[5] = value;
};

func void UseBookXP500()
{
	UseXPBook(BookXP500);
};

// ---------------------------------------------------------------------------------------------------------------------------
instance ItWr_Addon_BookXP1000(ItWr_Addon_XPBook)
{
	value = (BookXP1000 * XPMultiplier);
	COUNT[0] = BookXP1000;
	on_state[0] = UseBookXP1000;
	COUNT[5] = value;
};

func void UseBookXP1000()
{
	UseXPBook(BookXP1000);
};

// ---------------------------------------------------------------------------------------------------------------------------
//				Lernpunktbücher
// ---------------------------------------------------------------------------------------------------------------------------
prototype ItWr_Addon_LPBook(C_ITEM)
{
	name = "Buch des Wissens";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;

	scemeName = "MAPSEALED";

	description = name;
	TEXT[0] = PRINT_LearnLP;

	TEXT[5] = NAME_Value;
};

// ---------------------------------------------------------------------------------------------------------------------------
instance ItWr_Addon_BookLP2(ItWr_Addon_LPBook)
{
	value = (BookLp2 * LPMultiplier);
	COUNT[0] = BookLp2;
	on_state[0] = UseBookLp2;
	COUNT[5] = value;
};

func void UseBookLp2()
{
	UseLPBook(BookLp2);
};

// ---------------------------------------------------------------------------------------------------------------------------
instance ItWr_Addon_BookLP3(ItWr_Addon_LPBook)
{
	value = (BookLp3 * LPMultiplier);
	COUNT[0] = BookLp3;
	on_state[0] = UseBookLp3;
	COUNT[5] = value;
};

func void UseBookLp3()
{
	UseLPBook(BookLp3);
};

// ---------------------------------------------------------------------------------------------------------------------------
instance ItWr_Addon_BookLP5(ItWr_Addon_LPBook)
{
	value = (BookLp5 * LPMultiplier);
	COUNT[0] = BookLp5;
	on_state[0] = UseBookLp5;
	COUNT[5] = value;
};

func void UseBookLp5()
{
	UseLPBook(BookLp5);
};

// ---------------------------------------------------------------------------------------------------------------------------
instance ItWr_Addon_BookLP8(ItWr_Addon_LPBook)
{
	value = (BookLp8 * LPMultiplier);
	COUNT[0] = BookLp8;
	on_state[0] = UseBookLp8;
	COUNT[5] = value;
};

func void UseBookLp8()
{
	UseLPBook(BookLp8);
};
