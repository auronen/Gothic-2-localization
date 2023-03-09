//-------------------------------------------------------------------------------------
//				Milten_03 //oben
//-------------------------------------------------------------------------------------
const string Bookstand_Milten_03_S1_1 = "Es ist spät geworden.";
const string Bookstand_Milten_03_S1_2 = "Mit dem Zusammenbruch der alten Mine ist auch die Stimmung der Erzbarone zusammmengebrochen.";
const string Bookstand_Milten_03_S1_3 = "Gomez ist wie ein Pulverfaß, das kurz vor dem explodieren steht.  ";
const string Bookstand_Milten_03_S1_4 = "Corristo";
const string Bookstand_Milten_03_S1_5 = "Er glaubt das dieser neue Kerl schuld am Zusammenbruch der Mine ist. Dieser Mann ist in der Tat ungewöhnlich. Aber er sollte sich hier besser nicht mehr blicken lassen.";
const string Bookstand_Milten_03_S1_6 = "Corristo";
const string Bookstand_Milten_03_S1_7 = "Gomez ist jähzorniger denn je zuvor und ich glaube zu wissen was er vorhat. Wir müssen unbedingt die Wassermagier unterrichten, bevor es zu spät ist. ";
const string Bookstand_Milten_03_S1_8 = "Corristo";
const string Bookstand_Milten_03_S1_9 = "Vielleicht gelingt es uns eine Katastrophe zu verhindern. Nicht auszudenken was passieren würde, wenn er die freie Mine, ";
FUNC VOID Bookstand_Milten_03_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, Bookstand_Milten_03_S1_1					);
					Doc_PrintLines	( nDocID,  0, Bookstand_Milten_03_S1_2	);
					Doc_PrintLines	( nDocID,  0, Bookstand_Milten_03_S1_3					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, Bookstand_Milten_03_S1_4);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, Bookstand_Milten_03_S1_5);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, Bookstand_Milten_03_S1_6);
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Milten_03_S1_7					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, Bookstand_Milten_03_S1_8					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Milten_03_S1_9					);
					Doc_Show		( nDocID );

	};
};
//-------------------------------------------------------------------------------------
//				Milten_02 //unten
//-------------------------------------------------------------------------------------
const string Bookstand_Milten_02_S1_1 = "Ich war so frei, mich hier ein wenig einzurichten. Wer hätte gedacht, das ich einmal der einzige Magier des Lagers sein werde?";
const string Bookstand_Milten_02_S1_2 = "Nun ja, ich kann mich nicht wirklich darüber freuen, das ich wieder hier bin. Eigentlich sollte ich zusehen, das ich hier wegkomme.";
const string Bookstand_Milten_02_S1_3 = "Diese Expedition ist einfach nicht erfolgreich.";
const string Bookstand_Milten_02_S1_4 = "Die Schürfer sind gestern aufgebrochen. Sie haben Diego mitgenommen - würde mich nicht wundern, wenn er abhaut. ";
const string Bookstand_Milten_02_S1_5 = "Denn er wird garantiert keine Spitzhacke schwingen. ";
const string Bookstand_Milten_02_S1_6 = "Nun, ich werde die Zeit nutzen, um mich in die Kunst der Alchemie einzuarbeiten. ";
const string Bookstand_Milten_02_S1_7 = "Milten";
FUNC VOID Bookstand_Milten_02_S1()		
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
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, Bookstand_Milten_02_S1_1					);
					Doc_PrintLines	( nDocID,  0, Bookstand_Milten_02_S1_2	);
					Doc_PrintLines	( nDocID,  0, Bookstand_Milten_02_S1_3					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Milten_02_S1_4					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Milten_02_S1_5					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Milten_02_S1_6					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, Bookstand_Milten_02_S1_7					);
					Doc_Show		( nDocID );

	};
};
//-------------------------------------------------------------------------------------
//				Milten_01 //unten
//-------------------------------------------------------------------------------------
FUNC VOID Bookstand_Milten_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		//	if (Npc_IsPlayer(self))
		//	{
		//		B_SetPlayerMap(ItWr_Map_OldWorld);
		//	};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_OldWorld.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "OldWorld\OldWorld.zen");
					Doc_SetLevelCoords	(Document, -78500, 47500, 54000, -53000);
					Doc_Show			(Document);

	};
};
//-------------------------------------------------------------------------------------
//				Engor //unten
//-------------------------------------------------------------------------------------
const string Bookstand_Engor_01_S1_1 = "Bestand";
const string Bookstand_Engor_01_S1_2 = "Haben einigen Kram vorgefunden - kaum noch verwertbares Material, darunter wie folgt";
const string Bookstand_Engor_01_S1_3 = "3 Kisten alte Stoffe";
const string Bookstand_Engor_01_S1_4 = "8 Kisten rostige Eisenware";
const string Bookstand_Engor_01_S1_5 = "4 Kisten kaputte Rüstungsteile ";
const string Bookstand_Engor_01_S1_6 = "5 Kisten Leder und Fellwaren (stinken schon!)";
const string Bookstand_Engor_01_S1_7 = "2 Kisten Spitzhacken";
const string Bookstand_Engor_01_S1_8 = "3 Kisten Werkzeuge";
const string Bookstand_Engor_01_S1_9 = "16 Kisten Gesteinsbrocken (kaum Erzgehalt)";
const string Bookstand_Engor_01_S1_10 = "1 Kiste mit rostigen Rasiermessern";
const string Bookstand_Engor_01_S1_11 = "4 Kisten kaputtes Geschirr ";
const string Bookstand_Engor_01_S1_12 = "56 Fässer Wasser";
const string Bookstand_Engor_01_S1_13 = "1 Kiste Sumpf...- (was auch immer es war, es ist verdorben.)";
const string Bookstand_Engor_01_S1_14 = "Engor";
FUNC VOID Bookstand_Engor_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, Bookstand_Engor_01_S1_1);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, Bookstand_Engor_01_S1_2					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, Bookstand_Engor_01_S1_3	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, Bookstand_Engor_01_S1_4					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, Bookstand_Engor_01_S1_5);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, Bookstand_Engor_01_S1_6);
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Engor_01_S1_7					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Engor_01_S1_8					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Engor_01_S1_9					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Engor_01_S1_10					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Engor_01_S1_11					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Engor_01_S1_12					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, Bookstand_Engor_01_S1_13					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, Bookstand_Engor_01_S1_14					);
					Doc_Show		( nDocID );

	};
};

 
