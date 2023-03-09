//-------------------------------------------------------------------------------------
//				Weitere Buchständer in der Magierbibliothek
//-------------------------------------------------------------------------------------
//				Runensteine 
//-------------------------------------------------------------------------------------
const string Bookstand_Rune_01_S1_1 = "Seite 1";
const string Bookstand_Rune_01_S1_2 = "Die Runensteine";
const string Bookstand_Rune_01_S1_3 = "Seite 2";
const string Bookstand_Rune_01_S1_4 = " ";
FUNC VOID Use_Bookstand_Rune_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, Bookstand_Rune_01_S1_1					);
					Doc_PrintLine	( nDocID,  0, Bookstand_Rune_01_S1_2					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_PrintLines	( nDocID,  0, "");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, Bookstand_Rune_01_S1_3					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, Bookstand_Rune_01_S1_4					);
					Doc_Show		( nDocID );

	};
};
//-------------------------------------------------------------------------------------
//				Runen und Ingredenzien
//-------------------------------------------------------------------------------------
const string Bookstand_Rune_02_S1_1 = "Seite 1";
const string Bookstand_Rune_02_S1_2 = "Die Runen und ihre Ingredenzien";
const string Bookstand_Rune_02_S1_3 = "Seite 2";
const string Bookstand_Rune_02_S1_4 = " ";
FUNC VOID Use_Bookstand_Rune_02_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, Bookstand_Rune_02_S1_1					);
					Doc_PrintLine	( nDocID,  0, Bookstand_Rune_02_S1_2	);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_PrintLines	( nDocID,  0, "");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, Bookstand_Rune_02_S1_3					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, Bookstand_Rune_02_S1_4					);
					Doc_Show		( nDocID );

	};
};
//-------------------------------------------------------------------------------------
//				Die Lehren Innos
//-------------------------------------------------------------------------------------
const string Bookstand_Innos_01_S1_1 = "Seite 1";
const string Bookstand_Innos_01_S1_2 = "Die Lehren Innos";
const string Bookstand_Innos_01_S1_3 = "Seite 2";
const string Bookstand_Innos_01_S1_4 = " ";
FUNC VOID Use_Bookstand_Innos_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, Bookstand_Innos_01_S1_1					);
					Doc_PrintLine	( nDocID,  0, Bookstand_Innos_01_S1_2	);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_PrintLines	( nDocID,  0, "");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, Bookstand_Innos_01_S1_3					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, Bookstand_Innos_01_S1_4					);
					Doc_Show		( nDocID );

	};
};
//-------------------------------------------------------------------------------------
//				Die Gebote Innos
//-------------------------------------------------------------------------------------
const string Bookstand_Innos_02_S1_1 = "Seite 1";
const string Bookstand_Innos_02_S1_2 = "Die Gebote Innos";
const string Bookstand_Innos_02_S1_3 = "Seite 2";
const string Bookstand_Innos_02_S1_4 = " ";
FUNC VOID Use_Bookstand_Innos_02_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, Bookstand_Innos_02_S1_1					);
					Doc_PrintLine	( nDocID,  0, Bookstand_Innos_02_S1_2	);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_PrintLines	( nDocID,  0, "");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, Bookstand_Innos_02_S1_3					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, Bookstand_Innos_02_S1_4					);
					Doc_Show		( nDocID );

	};
};
//-------------------------------------------------------------------------------------
//				Runen des ersten Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
const string Bookstand_Kreise_01_S1_1 = "DER ERSTE KREIS";
const string Bookstand_Kreise_01_S1_2 = "Die Runen des ersten Kreises und die zu deren Herstellung benötigten Ingredenzien ";
const string Bookstand_Kreise_01_S1_3 = "Goldmünze";
const string Bookstand_Kreise_01_S1_4 = "Feuerpfeil";
const string Bookstand_Kreise_01_S1_5 = "Schwefel";
const string Bookstand_Kreise_01_S1_6 = "Kleiner Blitz";
const string Bookstand_Kreise_01_S1_7 = "Bergkristall";
const string Bookstand_Kreise_01_S1_8 = "Goblin Skelett";
const string Bookstand_Kreise_01_S1_9 = "Knochen eines Goblins";
const string Bookstand_Kreise_01_S1_10 = "Heilpflanze";
const string Bookstand_Kreise_01_S1_11 = "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich.";
const string Bookstand_Kreise_01_S1_12 = "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen.";
const string Bookstand_Kreise_01_S1_13 = "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen.";
FUNC VOID Use_Bookstand_Kreise_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_01_S1_1					);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLines	( nDocID,  0, Bookstand_Kreise_01_S1_2);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, NAME_SPL_LIGHT);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_01_S1_3);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_01_S1_4);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_01_S1_5);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_01_S1_6);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_01_S1_7);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_01_S1_8);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_01_S1_9);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, NAME_SPL_LightHeal);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_01_S1_10);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_01_S1_11					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_01_S1_12					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_01_S1_13					);
					Doc_Show		( nDocID );
	};
};
//-------------------------------------------------------------------------------------
//				Runen des zweiten Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
const string Bookstand_Kreise_02_S1_1 = "DER ZWEITE KREIS";
const string Bookstand_Kreise_02_S1_2 = "Die Runen des zweiten Kreises und die zu deren Herstellung benötigten Ingredenzien ";
const string Bookstand_Kreise_02_S1_3 = "Feuerball";
const string Bookstand_Kreise_02_S1_4 = "Pech";
const string Bookstand_Kreise_02_S1_5 = "Eispfeil";
const string Bookstand_Kreise_02_S1_6 = "Gletscher Quartz";
const string Bookstand_Kreise_02_S1_7 = "Wolf rufen";
const string Bookstand_Kreise_02_S1_8 = "Wolfsfell";
const string Bookstand_Kreise_02_S1_9 = "Windfaust";
const string Bookstand_Kreise_02_S1_10 = "Kohle";
const string Bookstand_Kreise_02_S1_11 = "Schlaf";
const string Bookstand_Kreise_02_S1_12 = "Sumpfkraut";
const string Bookstand_Kreise_02_S1_13 = "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich.";
const string Bookstand_Kreise_02_S1_14 = "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen.";
const string Bookstand_Kreise_02_S1_15 = "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen.";
FUNC VOID Use_Bookstand_Kreise_02_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_02_S1_1					);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLines	( nDocID,  0, Bookstand_Kreise_02_S1_2);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_02_S1_3);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_02_S1_4);
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_02_S1_5);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_02_S1_6);
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_02_S1_7);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_02_S1_8);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_02_S1_9);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_02_S1_10);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_02_S1_11);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_02_S1_12);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_02_S1_13					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_02_S1_14					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_02_S1_15					);
					Doc_Show		( nDocID );
	
	};
};  
//-------------------------------------------------------------------------------------
//				Runen des dritten Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
const string Bookstand_Kreise_03_S1_1 = "DER DRITTE KREIS";
const string Bookstand_Kreise_03_S1_2 = "Die Runen des dritten Kreises und die zu deren Herstellung benötigten Ingredenzien ";
const string Bookstand_Kreise_03_S1_3 = "Heilkraut";
const string Bookstand_Kreise_03_S1_4 = "Kleiner Feuersturm";
const string Bookstand_Kreise_03_S1_5 = "Pech, Schwefel";
const string Bookstand_Kreise_03_S1_6 = "Skelett erschaffen";
const string Bookstand_Kreise_03_S1_7 = "Knochen eines Skeletts";
const string Bookstand_Kreise_03_S1_8 = "Furcht";
const string Bookstand_Kreise_03_S1_9 = "Schwarze Perle";
const string Bookstand_Kreise_03_S1_10 = "Eisblock";
const string Bookstand_Kreise_03_S1_11 = "Gletscher Quartz";
const string Bookstand_Kreise_03_S1_12 = "Aquamarin";
const string Bookstand_Kreise_03_S1_13 = "Kugelblitz";
const string Bookstand_Kreise_03_S1_14 = "Bergkristall";
const string Bookstand_Kreise_03_S1_15 = "Schwefel";
const string Bookstand_Kreise_03_S1_16 = "Feuerball";
const string Bookstand_Kreise_03_S1_17 = "Pech, Schwefel";
const string Bookstand_Kreise_03_S1_18 = "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich.";
const string Bookstand_Kreise_03_S1_19 = "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen.";
const string Bookstand_Kreise_03_S1_20 = "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen.";
FUNC VOID Use_Bookstand_Kreise_03_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_1					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, Bookstand_Kreise_03_S1_2);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					
					Doc_PrintLine	( nDocID,  0, NAME_SPL_MediumHeal);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_3);
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_4);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_5);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_6);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_7);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_8);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_9);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_10);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_11);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_12);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_13);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_14);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_15);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_16);
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_03_S1_17);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
			
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_03_S1_18					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_03_S1_19					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_03_S1_20					);
					Doc_Show		( nDocID );
		
	};
};  	
//-------------------------------------------------------------------------------------
//				Runen des vierten Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
const string Bookstand_Kreise_04_S1_1 = "DER VIERTE KREIS";
const string Bookstand_Kreise_04_S1_2 = "Die Runen des vierten Kreises und die zu deren Herstellung benötigten Ingredenzien ";
const string Bookstand_Kreise_04_S1_3 = "Grosser Feuerball";
const string Bookstand_Kreise_04_S1_4 = "Schwefel";
const string Bookstand_Kreise_04_S1_5 = "Pech";
const string Bookstand_Kreise_04_S1_6 = "Blitzschlag";
const string Bookstand_Kreise_04_S1_7 = "Bergkristall";
const string Bookstand_Kreise_04_S1_8 = "Gletscher Quartz";
const string Bookstand_Kreise_04_S1_9 = "Golem erwecken";
const string Bookstand_Kreise_04_S1_10 = "Herz eines Steingolems";
const string Bookstand_Kreise_04_S1_11 = "Untote vernichten";
const string Bookstand_Kreise_04_S1_12 = "Geweihtes Wasser";
const string Bookstand_Kreise_04_S1_13 = "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich.";
const string Bookstand_Kreise_04_S1_14 = "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen.";
const string Bookstand_Kreise_04_S1_15 = "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen.";
FUNC VOID Use_Bookstand_Kreise_04_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_04_S1_1					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, Bookstand_Kreise_04_S1_2);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_04_S1_3);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_04_S1_4);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_04_S1_5);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_04_S1_6);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_04_S1_7);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_04_S1_8);
					Doc_PrintLine	( nDocID,  0, "");				
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_04_S1_9);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_04_S1_10);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_04_S1_11);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_04_S1_12);
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					
					
					
			
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_04_S1_13					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_04_S1_14					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_04_S1_15					);
					Doc_Show		( nDocID );
		
	};
};  					
//-------------------------------------------------------------------------------------
//				Runen des fünften Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
const string Bookstand_Kreise_05_S1_1 = "DER FÜNFTE KREIS";
const string Bookstand_Kreise_05_S1_2 = "Die Runen des fünften Kreises und die zu deren Herstellung benötigten Ingredenzien ";
const string Bookstand_Kreise_05_S1_3 = "Eiswelle";
const string Bookstand_Kreise_05_S1_4 = "Gletscher Quartz";
const string Bookstand_Kreise_05_S1_5 = "Aquamarin";
const string Bookstand_Kreise_05_S1_6 = "Grosser Feuersturm";
const string Bookstand_Kreise_05_S1_7 = "Schwefel";
const string Bookstand_Kreise_05_S1_8 = "Flammenzunge";
const string Bookstand_Kreise_05_S1_9 = "Dämon beschwören";
const string Bookstand_Kreise_05_S1_10 = "Herz eines Dämonen";
const string Bookstand_Kreise_05_S1_11 = "Schwere Wunden heilen";
const string Bookstand_Kreise_05_S1_12 = "Heilwurzel";
const string Bookstand_Kreise_05_S1_13 = "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich.";
const string Bookstand_Kreise_05_S1_14 = "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen.";
const string Bookstand_Kreise_05_S1_15 = "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen.";
FUNC VOID Use_Bookstand_Kreise_05_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_05_S1_1					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, Bookstand_Kreise_05_S1_2);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_05_S1_3);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_05_S1_4);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_05_S1_5);
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_05_S1_6);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_05_S1_7);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_05_S1_8);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_05_S1_9);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_05_S1_10);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_05_S1_11);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_05_S1_12);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_05_S1_13					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_05_S1_14					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_05_S1_15					);
					Doc_Show		( nDocID );
		
	};
};  			
//-------------------------------------------------------------------------------------
//				Runen des sechsten Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
const string Bookstand_Kreise_06_S1_1 = "DER SECHSTE KREIS";
const string Bookstand_Kreise_06_S1_2 = "Die Runen des sechsten Kreises und die zu deren Herstellung benötigten Ingredenzien ";
const string Bookstand_Kreise_06_S1_3 = "Feuerregen";
const string Bookstand_Kreise_06_S1_4 = "Pech";
const string Bookstand_Kreise_06_S1_5 = "Schwefel";
const string Bookstand_Kreise_06_S1_6 = "Flammenzunge";
const string Bookstand_Kreise_06_S1_7 = "Todeshauch";
const string Bookstand_Kreise_06_S1_8 = "Kohle";
const string Bookstand_Kreise_06_S1_9 = "Schwarze Perle";
const string Bookstand_Kreise_06_S1_10 = "Todeswelle";
const string Bookstand_Kreise_06_S1_11 = "Knochen eines Skeletts";
const string Bookstand_Kreise_06_S1_12 = "Schwarze Perle";
const string Bookstand_Kreise_06_S1_13 = "Armee der Finsternis";
const string Bookstand_Kreise_06_S1_14 = "Knochen eines Skeletts";
const string Bookstand_Kreise_06_S1_15 = "Schwarze Perle";
const string Bookstand_Kreise_06_S1_16 = "Herz eines Steingolems";
const string Bookstand_Kreise_06_S1_17 = "Herz eines Dämonen";
const string Bookstand_Kreise_06_S1_18 = "Monster schrumpfen";
const string Bookstand_Kreise_06_S1_19 = "Knochen eines Goblins";
const string Bookstand_Kreise_06_S1_20 = "Trollhauer";
const string Bookstand_Kreise_06_S1_21 = "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich.";
const string Bookstand_Kreise_06_S1_22 = "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen.";
const string Bookstand_Kreise_06_S1_23 = "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen.";
FUNC VOID Use_Bookstand_Kreise_06_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_1					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, Bookstand_Kreise_06_S1_2);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_3);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_4);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_5);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_6);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_7);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_8);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_9);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_10);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_11);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_12);
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_13);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_14);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_15);
					Doc_PrintLine	( nDocID,  0, Bookstand_Kreise_06_S1_16);
					Doc_PrintLine	( nDocID,  0,  Bookstand_Kreise_06_S1_17);
					Doc_PrintLine	( nDocID,  0, "");
					
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLine	( nDocID,  1, Bookstand_Kreise_06_S1_18);
					Doc_PrintLine	( nDocID,  1, Bookstand_Kreise_06_S1_19);
					Doc_PrintLine	( nDocID,  1, Bookstand_Kreise_06_S1_20);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
			
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_06_S1_21					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_06_S1_22					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Kreise_06_S1_23					);
					Doc_Show		( nDocID );
		
	};
};  					
//-------------------------------------------------------------------------------------
//				Die Regeln im Kloster
//-------------------------------------------------------------------------------------
const string Bookstand_Rules_01_S1_1 = "Seite 1";
const string Bookstand_Rules_01_S1_2 = "Regeln";
const string Bookstand_Rules_01_S1_3 = "Seite 2";
const string Bookstand_Rules_01_S1_4 = " ";
FUNC VOID Use_Bookstand_Rules_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, Bookstand_Rules_01_S1_1					);
					Doc_PrintLine	( nDocID,  0, Bookstand_Rules_01_S1_2	);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_PrintLines	( nDocID,  0, "");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, Bookstand_Rules_01_S1_3					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, Bookstand_Rules_01_S1_4					);
					Doc_Show		( nDocID );

	};
};




