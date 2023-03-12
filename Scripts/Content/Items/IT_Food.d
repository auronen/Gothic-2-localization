// ************************************************************************************************
// Heilwirkung und Kosten von Nahrung
// ************************************************************************************************

const int Value_Apple = 8; const int HP_Apple = 3;
const int Value_Cheese = 30; const int HP_Cheese = 15;
const int Value_Bacon = 50; const int HP_Bacon = 20;
const int Value_Bread = 20; const int HP_Bread = 10;
const int Value_Fish = 15; const int HP_Fish = 5;
const int Value_Rawmeat = 3; const int HP_RawMeat = 6;
const int Value_Meat = 6; const int HP_Meat = 12;
const int Value_Stew = 8; const int HP_Stew = 20;
const int Value_FishSoup = 20; const int HP_FishSoup = 10;
const int Value_Sausage = 30; const int HP_Sausage = 12;
const int Value_Honey = 30; const int HP_Honey = 12;

const int Value_Water = 10; const int HP_Water = 8;
const int Value_Beer = 20; const int HP_Beer = 3; const int Mana_Beer = 1;
const int Value_Booze = 15; const int HP_Booze = 4; const int Mana_Booze = 1;
const int Value_Wine = 20; const int HP_Wine = 2; const int Mana_Wine = 1;
const int Value_Milk = 15; const int HP_Milk = 5; const int Mana_Milk = 1; // Joly: Wenn diese Werte geändert werden passt Lobarts Auftrag holMilch nicht mehr!!!!!!

// ************************************************************************************************
//	Essbares
// ************************************************************************************************

instance ItFo_Apple(C_Item)
{
	name						= "Apfel";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Apple.3DS";
	material					= MAT_LEATHER;

	scemeName					= "FOOD";
	on_state[0]					= Use_Apple;

	value						= Value_Apple;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Apple;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Ein frischer Apfel";							count[3] = 0;
	text[4]						= "knackig und saftig";							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Apple;
};

func void Use_Apple()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Apple);

	if (Npc_IsPlayer(self))
	{
		Apple_Bonus = Apple_Bonus + 1;

		if (Apple_Bonus == 7)
		{
			Print(PRINT_Eat1);
		};

		if (Apple_Bonus == 15)
		{
			Print(PRINT_Eat2);
		};

		if (Apple_Bonus == 25)
		{
			Print(PRINT_Eat3);
			B_RaiseAttribute(self, ATR_STRENGTH, 1);
			Snd_Play("LevelUp");
			Apple_Bonus = 0;
		};
	};
};

instance ItFo_Cheese(C_Item)
{
	name						= "Käse";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Cheese.3DS";
	material					= MAT_LEATHER;

	scemeName					= "FOODHUGE";
	on_state[0]					= Use_Cheese;

	value						= Value_Cheese;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Cheese;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Cheese;
};

func void Use_Cheese()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Cheese);
};

instance ItFo_Bacon(C_Item)
{
	name						= "Schinken";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Bacon.3ds";
	material					= MAT_LEATHER;

	scemeName					= "FOODHUGE";
	on_state[0]					= Use_Bacon;

	value						= Value_Bacon;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Bacon;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Bacon;
};

func void Use_Bacon()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Bacon);
};

instance ItFo_Bread(C_Item)
{
	name						= "Brot";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Bread.3DS";
	material					= MAT_LEATHER;

	scemeName					= "FOODHUGE";
	on_state[0]					= Use_Bread;

	value						= Value_Bread;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Bread;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Bread;
};

func void Use_Bread()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Bread);
};

instance ItFo_Fish(C_Item)
{
	name						= "Fisch";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Fish.3DS";
	material					= MAT_LEATHER;

	scemeName					= "FOODHUGE";
	on_state[0]					= Use_Fish;

	value						= Value_Fish;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Fish;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Fish;
};

func void Use_Fish()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Fish);
};

instance ItFoMuttonRaw(C_Item)
{
	name						= "Rohes Fleisch";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFoMuttonRaw.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MEAT";
	on_state[0]					= Use_RawMeat;

	value						= Value_RawMeat;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_RawMeat;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_RawMeat;
};

func void Use_RawMeat()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_RawMeat);
};

instance ItFoMutton(C_Item) // kommt aus Bratpfannen-Mobsi !!!
{
	name						= "Gebratenes Fleisch";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFoMutton.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MEAT";
	on_state[0]					= Use_Meat;

	value						= Value_Meat;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Meat;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Meat;
};

func void Use_Meat()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Meat);
};

instance ItFo_Stew(C_Item)
{
	name						= "Eintopf";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Stew.3ds";
	material					= MAT_WOOD;

	scemeName					= "RICE";
	on_state[0]					= Use_Stew;

	value						= Value_Stew;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Stew;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Stew;
};

func void Use_Stew()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Stew);
};

instance ItFo_XPStew(C_Item)
{
	name						= "Thekla's Eintopf";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Stew.3ds";
	material					= MAT_WOOD;

	scemeName					= "RICE";
	on_state[0]					= Use_XPStew;

	value						= Value_Stew;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Stew;
	text[2]						= NAME_Bonus_Str;								count[2] = 1;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Stew;
};

func void Use_XPStew()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Stew);
	Snd_Play("LevelUp");
	B_RaiseAttribute(self, ATR_STRENGTH, 1);
};

instance ItFo_CoragonsBeer(C_Item)
{
	name						= "Bier";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Beer.3DS";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= Use_CoragonsBeerBeer;

	value						= Value_Beer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Beer;
	text[2]						= NAME_Bonus_Mana;								count[2] = Mana_Beer;
	text[3]						= "";											count[3] = 0;
	text[4]						= "Coragons Spezial Bier";						count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Beer;
};

func void Use_CoragonsBeerBeer()
{
	B_RaiseAttribute(self, ATR_MANA_MAX, Mana_Beer);
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Beer);

	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, HP_Beer);
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Beer);
	var string concatText;
	concatText = ConcatStrings(PRINT_Learnhitpoints_MAX, IntToString(HP_Beer));
	PrintScreen(concatText, 55, -1, FONT_Screen, 2);
};

instance ItFo_FishSoup(C_Item)
{
	name						= "Fischsuppe";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_FishSoup.3ds";
	material					= MAT_WOOD;

	scemeName					= "RICE";
	on_state[0]					= Use_FishSoup;

	value						= Value_FishSoup;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_FishSoup;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_FishSoup;
};

func void Use_FishSoup()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_FishSoup);
};

instance ItFo_Sausage(C_Item)
{
	name						= "Wurst";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Sausage.3DS";
	material					= MAT_LEATHER;

	scemeName					= "FOODHUGE";
	on_state[0]					= Use_Sausage;

	value						= Value_Sausage;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Sausage;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Sausage;
};

func void Use_Sausage()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Sausage);
};

instance ItFo_Honey(C_Item)
{
	name						= "Honig";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Honey.3DS";
	material					= MAT_STONE;

	scemeName					= "FOODHUGE";
	on_state[0]					= Use_Honey;

	value						= Value_Honey;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Honey;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Honey;
};

func void Use_Honey()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Honey);
};

// ************************************************************************************************
//	Trinkbares
// ************************************************************************************************

instance ItFo_Water(C_Item)
{
	name						= "Wasser";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Water.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTION";
	on_state[0]					= Use_Water;

	value						= Value_Water;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Water;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Water;
};

func void Use_Water()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Water);
};

instance ItFo_Beer(C_Item)
{
	name						= "Bier";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Beer.3DS";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= Use_Beer;

	value						= Value_Beer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Beer;
	text[2]						= NAME_Bonus_Mana;								count[2] = Mana_Beer;
	text[3]						= "";											count[3] = 0;
	text[4]						= "Dunkles Paladiner";							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Beer;
};

func void Use_Beer()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Beer);
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Beer);
};

instance ItFo_Booze(C_Item)
{
	name						= "Wacholder";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Booze.3DS";
	material					= MAT_GLAS;

	scemeName					= "POTION";
	on_state[0]					= Use_Booze;

	value						= Value_Booze;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Booze;
	text[2]						= NAME_Bonus_Mana;								count[2] = Mana_Booze;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Booze;
};

func void Use_Booze()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Booze);
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Booze);
};

instance ItFo_Wine(C_Item)
{
	name						= "Wein";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Wine.3DS";
	material					= MAT_GLAS;

	scemeName					= "POTION";
	on_state[0]					= Use_Wine;

	value						= Value_Wine;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Wine;
	text[2]						= NAME_Bonus_Mana;								count[2] = Mana_Wine;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Wine;
};

func void Use_Wine()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Wine);
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Wine);
};

instance ItFo_Milk(C_Item)
{
	name						= "Milch";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Milk.3DS";
	material					= MAT_GLAS;

	scemeName					= "POTION";
	on_state[0]					= Use_Milk;

	value						= Value_Milk;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Milk;
	text[2]						= NAME_Bonus_Mana;								count[2] = Mana_Milk;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Milk;
};

func void Use_Milk()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Milk);
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Milk);
};
