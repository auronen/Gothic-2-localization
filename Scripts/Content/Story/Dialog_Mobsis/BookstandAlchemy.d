//##########################################################################
//##
//##	Bookstand Alchemie
//##
//##########################################################################

//----------------------
var int ALchemy_1_permanent;
//----------------------
//----------------------
var int ALchemy_2_permanent;
//----------------------
//----------------------
var int ALchemy_3_permanent;
//----------------------

const string BookstandALCHEMY1_S1_1 = "Tränke magischer Kraft";
const string BookstandALCHEMY1_S1_2 = "und ihre Zutaten";
const string BookstandALCHEMY1_S1_3 = "2 Feuernesseln";
const string BookstandALCHEMY1_S1_4 = "2 Feuerkräuter";
const string BookstandALCHEMY1_S1_5 = "2 Feuerwurzeln";
const string BookstandALCHEMY1_S1_6 = "Jegliche Arbeit am Alchemietisch  erfordert eine Laborwasserflasche, die während des Prozesses verbraucht wird.";
const string BookstandALCHEMY1_S1_7 = "Für das Brauen von Tränken der Heilung oder der Stärkung der magischen Kraft, benötigt der Anwender neben der speziellen Zutat immer eine Pflanze:";
const string BookstandALCHEMY1_S1_8 = "Feldknöterich";
const string BookstandALCHEMY1_S1_9 = "Für das Brauen von Tränken die permanente Veränderungen des Körpers oder Geistes bewirken, benötigt der Anwender immer eine Pflanze: ";
const string BookstandALCHEMY1_S1_10 = "Kronstöckl";
FUNC VOID Use_BookstandALCHEMY1_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY1_S1_1);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY1_S1_2						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ItPo_Mana_01.description						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY1_S1_3						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ItPo_Mana_02.description						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY1_S1_4						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ItPo_Mana_03.description						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY1_S1_5						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY1_S1_6	); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY1_S1_7			);
					Doc_PrintLine	( nDocID,  1, BookstandALCHEMY1_S1_8		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY1_S1_9						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY1_S1_10		);
					Doc_Show		( nDocID );
					
					if (ALchemy_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);
						ALchemy_1_permanent = TRUE;
					};	  

	};
};

const string BookstandALCHEMY2_S1_1 = "Tränke heilender Kraft";
const string BookstandALCHEMY2_S1_2 = "und ihre Zutaten";
const string BookstandALCHEMY2_S1_3 = "2 Heilpflanzen";
const string BookstandALCHEMY2_S1_4 = "2 Heilkräuter";
const string BookstandALCHEMY2_S1_5 = "2 Heilwurzeln";
const string BookstandALCHEMY2_S1_6 = "Jegliche Arbeit am Alchemietisch  erfordert eine Laborwasserflasche, die während des Prozesses verbraucht wird.";
const string BookstandALCHEMY2_S1_7 = "Für das Brauen von Tränken der Heilung oder der Stärkung der magischen Kraft, benötigt der Anwender neben der speziellen Zutat immer eine Pflanze:";
const string BookstandALCHEMY2_S1_8 = "Feldknöterich";
const string BookstandALCHEMY2_S1_9 = "Für das Brauen von Tränken die permanente Veränderungen des Körpers oder Geistes bewirken, benötigt der Anwender immer eine Pflanze: ";
const string BookstandALCHEMY2_S1_10 = "Kronstöckl";
FUNC VOID Use_BookstandALCHEMY2_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_1);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_2						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ItPo_Health_01.description						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_3						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ItPo_Health_02.description						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_4						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ItPo_Health_03.description						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_5						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY2_S1_6	); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY2_S1_7			);
					Doc_PrintLine	( nDocID,  1, BookstandALCHEMY2_S1_8		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY2_S1_9						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY2_S1_10		);
					Doc_Show		( nDocID );
					
					if (ALchemy_2_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);
						ALchemy_2_permanent = TRUE;
					};	

	};
};

const string BookstandALCHEMY3_S1_1 = "Tränke permanenter Veränderungen";
const string BookstandALCHEMY3_S1_2 = "und ihre Zutaten";
const string BookstandALCHEMY3_S1_3 = "1 Goblin Beere";
const string BookstandALCHEMY3_S1_4 = "1 Snapperkraut - dieser Trank benötigt keinen Kronstöckl, sondern Feldknöterich";
const string BookstandALCHEMY3_S1_5 = "1 Drachenwurzel";
const string BookstandALCHEMY3_S1_6 = "1 Heilwurzel";
const string BookstandALCHEMY3_S1_7 = "1 Feuerwurzel";
const string BookstandALCHEMY3_S1_8 = "Das Brauen dieser Rezepturen ist die hohe Kunst der Alchemie. Ihnen allen ist zu eigen, dass sie einen Kronstöckl als Zutat verlangen.";
const string BookstandALCHEMY3_S1_9 = "Der Trank der Geschwindigkeit ist viel einfacher herzustellen, was auch daran liegt, das man keinen Kronstöckl benötigt. ";
FUNC VOID Use_BookstandALCHEMY3_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, BookstandALCHEMY3_S1_1);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY3_S1_2						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					Doc_PrintLine	( nDocID,  0, ItPo_Perm_DEX.description						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY3_S1_3						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ItPo_Speed.description						);
					Doc_PrintLines	( nDocID,  0, BookstandALCHEMY3_S1_4						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ItPo_Perm_STR.description						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY3_S1_5						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, ItPo_Perm_Health.description						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY3_S1_6						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, ItPo_Perm_Mana.description						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY3_S1_7						);
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY3_S1_8); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY3_S1_9						);
					Doc_PrintLine	( nDocID,  1, ""						);
					
					
					Doc_Show		( nDocID );
					
					if (ALchemy_3_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);
						ALchemy_3_permanent = TRUE;
					};	

	};
};
