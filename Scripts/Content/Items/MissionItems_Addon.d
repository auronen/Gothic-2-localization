//****************************************************************************
//				Cavalorn's Brief an Vatras von Saturas
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_SaturasFirstMessage_Addon_Sealed	(C_Item)
{
	name 				=	"Versiegelte Botschaft";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_SaturasFirstMessage_Sealed;
	scemeName			=	"MAPSEALED";
	description			= 	name;
	TEXT[2]				=   "Diese Botschaft wurde sorgfältig versiegelt.";

};
var int Use_SaturasFirstMessage_OneTime;
const string SaturasFirstMessage_1 = "Werter Vatras,";
const string SaturasFirstMessage_2 = "Wir sind bis zum Portal vorgedrungen. Du hattest recht.";
const string SaturasFirstMessage_3 = "Es scheint tatsächlich so, als seien sie Adanos-gläubige gewesen. Ich bitte dich, das anhand meiner Aufzeichnungen nochmal zu prüfen.";
const string SaturasFirstMessage_4 = "Wir haben schon seit Tagen keines dieser seltsamen Wesen aus Stein ausmachen können.";
const string SaturasFirstMessage_5 = "Trotzdem bebt die Erde immer noch aus nicht erkennbaren Gründen.";
const string SaturasFirstMessage_6 = "Ich vermute, dass uns das Studium bald mehr Aufklärung darüber bescheren wird.";
const string SaturasFirstMessage_7 = "Das Ornament, das wir gefunden haben, hat eine weitaus wichtigere Bedeutung, als wir zuerst angenommen haben. Es scheint ein wichtiges Schlüsselartefakt zu sein. Ist aber leider nicht vollständig. Wir müssen es noch weiter studieren.";
const string SaturasFirstMessage_8 = "Entsende eines unserer Kinder vom 'Ring des Wassers', um es uns zurück zu bringen. Wenn es geht, schicke nicht Cavalorn.";
const string SaturasFirstMessage_9 = "Ich habe ihn damit beauftragt, dir diesen Brief zu überbringen. Ich denke, damit hat er erst einmal genug getan.";
const string SaturasFirstMessage_10 = "Ich hoffe, dass wir das Richtige tun.";
const string SaturasFirstMessage_11 = "Saturas";
func void Use_SaturasFirstMessage ()
{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  1 );                         
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 	); 
					Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   	);  
					Doc_PrintLine	( nDocID,  0, SaturasFirstMessage_1					);
					Doc_PrintLines	( nDocID,  0, SaturasFirstMessage_2					);
					Doc_PrintLines	( nDocID,  0, SaturasFirstMessage_3					);
					Doc_PrintLines	( nDocID,  0, SaturasFirstMessage_4					);
					Doc_PrintLines	( nDocID,  0, SaturasFirstMessage_5					);
					Doc_PrintLines	( nDocID,  0, SaturasFirstMessage_6					);
					Doc_PrintLines	( nDocID,  0, SaturasFirstMessage_7					);
					Doc_PrintLines	( nDocID,  0, SaturasFirstMessage_8					);
					Doc_PrintLines	( nDocID,  0, SaturasFirstMessage_9					);
					Doc_PrintLines	( nDocID,  0, SaturasFirstMessage_10					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, SaturasFirstMessage_11					);
					Doc_Show		( nDocID );
		
		if (Use_SaturasFirstMessage_OneTime == FALSE)
		&& (MIS_Addon_Cavalorn_Letter2Vatras != LOG_SUCCESS)
		{
			Log_CreateTopic (TOPIC_Addon_KDW, LOG_MISSION);
			Log_SetTopicStatus(TOPIC_Addon_KDW, LOG_RUNNING);
			B_LogEntry (TOPIC_Addon_KDW,TOPIC_Addon_KDW_2); 
			Use_SaturasFirstMessage_OneTime = TRUE;
		};

		if (SC_KnowsRanger == FALSE)
		{
			Log_CreateTopic (TOPIC_Addon_RingOfWater, LOG_MISSION);
			Log_SetTopicStatus(TOPIC_Addon_RingOfWater, LOG_RUNNING);
			B_LogEntry (TOPIC_Addon_RingOfWater,TOPIC_Addon_RingOfWater_1); 
		};

		if (SC_IsRanger == FALSE)
		{
			Log_CreateTopic (TOPIC_Addon_RingOfWater, LOG_MISSION);
			Log_SetTopicStatus(TOPIC_Addon_RingOfWater, LOG_RUNNING);
			B_LogEntry (TOPIC_Addon_RingOfWater,TOPIC_Addon_RingOfWater_2); 
		};
	
		SC_KnowsRanger = TRUE;
}; 
func void Use_SaturasFirstMessage_Sealed ()
{   
	CreateInvItems (self, ItWr_SaturasFirstMessage_Addon,1);
	SaturasFirstMessageOpened = TRUE;
	Use_SaturasFirstMessage ();
}; 

//****************************************************************************
//				Cavalorn's Brief an Vatras von Saturas
//				Das Siegel wurde geöffnet		
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_SaturasFirstMessage_Addon	(C_Item)
{
	name 				=	"Geöffnete Botschaft";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_SaturasFirstMessage;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[2]				=   "Saturas` Brief an Vatras";
};


//****************************************************************************
//				Portalschlüsselbruchstück
//			---------------------------------------------
//****************************************************************************

INSTANCE  ItMi_Ornament_Addon (C_ITEM)
{
	name 				=	"Ornament";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Bruchstück eines grossen Ornamentrings";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

INSTANCE  ItMi_Ornament_Addon_Vatras (C_ITEM) //Joly:  gibt Vatras dem SC um ihn zu Lares zu bringen. Nur hiermit wird Saturas zufrieden gestellt -> erst dann Nefarius Auftrag!!!!!!!!!
{
	name 				=	"Ornament";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Bruchstück eines grossen Ornamentrings";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

//****************************************************************************
//				ItWr_Map_NewWorld_Ornaments_Addon
//			---------------------------------------------
//****************************************************************************


instance ItWr_Map_NewWorld_Ornaments_Addon (C_Item)
{
	name 		= "Nefarius's Karte";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld_Ornaments;

	description	= name;
	TEXT[0]		= "auf dieser Karte sind die Stellen markiert";
	TEXT[1]		= "an denen Nefarius die fehlenden Ornamente vermutet";
	TEXT[2]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld_Ornaments()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_NewWorld_Ornaments_Addon);
		};

		SC_SAW_ORNAMENT_MAP = TRUE;

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_Ornaments.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
					Doc_SetLevelCoords	(Document, -28000, 50500, 95500, -42500);
					Doc_Show			(Document);
	};

//****************************************************************************
//				ItWr_Map_NewWorld_Dexter
//			---------------------------------------------
//****************************************************************************

instance ItWr_Map_NewWorld_Dexter (C_Item)
{
	name 		= "Landkarte Khorinis";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 210;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld_Dexter;

	description	= name;
	TEXT[0]		= "Skip hat mir die Stelle markiert,";
	TEXT[1]		= "wo ich den Kopf der Banditen";
	TEXT[2]		= "Dexter finden kann.";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld_Dexter ()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_NewWorld_Dexter);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_Dexter.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
					Doc_SetLevelCoords	(Document, -28000, 50500, 95500, -42500);
					Doc_Show			(Document);
	};


//****************************************************************************
//				ItRi_Ranger_Addon
//			---------------------------------------------
//****************************************************************************

PROTOTYPE Rangerring_Prototype (C_ITEM)
{
	name 					=	"Aquamarinring";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING|ITEM_MISSION; //Joly:kein Multiitem. Die ringe sind individuell

	value 					=	Value_Ri_HpMana;

	visual 					=	"ItRi_Hp_Mana_01.3ds"; 

	visual_skin 			=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_ItRi_Ranger_Addon;
	on_unequip				=	UnEquip_ItRi_Ranger_Addon;

	description				= "Erkennungszeichen des 'Rings des Wassers'";
	
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
		
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
	
};

FUNC VOID Equip_ItRi_Ranger_Addon()
{
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
		{
			if (ENTERED_ADDONWORLD == FALSE) //Joly:wegen Lance' Ring
			{
				if (Npc_HasItems (hero,ItRi_Ranger_Addon) == FALSE)
				{
					RangerRingIsLaresRing = TRUE;
				};
			};
			
			SCIsWearingRangerRing = TRUE;
			Print	(PRINT_Addon_SCIsWearingRangerRing);
		};
};

FUNC VOID UnEquip_ItRi_Ranger_Addon ()
{
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
		{
			if (SC_IsRanger == FALSE)
			{
				SCIsWearingRangerRing = FALSE;
			};
			RangerRingIsLaresRing = FALSE;
		};
};

//Lares Ring
INSTANCE ItRi_Ranger_Lares_Addon (Rangerring_Prototype)
{
	TEXT[1]					= "Dieser Ring gehört Lares";
};

//PCs Ring
INSTANCE ItRi_Ranger_Addon (Rangerring_Prototype)
{
	TEXT[1]					= "Dieser Ring gehört mir";
};
//Lance Ring
INSTANCE ItRi_LanceRing (Rangerring_Prototype)
{
	TEXT[1]					= "Dieser Ring gehört Lance";
};



//****************************************************************************
//				ItMi_PortalRing_Addon
//			---------------------------------------------
//****************************************************************************

INSTANCE ItMi_PortalRing_Addon (C_Item)
{
	name 				=	"Ornamentring";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_01.3DS"; 
	material 			=	MAT_STONE;

	description			= 	"Dieser Ring öffnet das Portal";
	INV_ZBIAS			= 	INVCAM_ENTF_MISC3_STANDARD;
};

//**********************************************************************************
//	Empfehlungsschreiben für Andre, Miliz zu werden (von Martin)
//----------------------------------------------------------------------------------

INSTANCE ItWr_Martin_MilizEmpfehlung_Addon		(C_Item)
{
	name 				=	"Martins Empfehlungsschreiben";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_MartinMilizEmpfehlung_Addon;
	scemeName			=	"MAP";
	description			=  	"Empfehlungsschreiben für Lord Andre";
	
	TEXT[2]				= 	"dieses Schreiben soll mir helfen bei";
	TEXT[3]				= 	"der Miliz aufgenommen zu werden";

	
};
const string MartinMilizEmpfehlung_Addon_1 = "Geehrter Lord Andre";
const string MartinMilizEmpfehlung_Addon_2 = "Mit diesem Schreiben übermittle ich euch einen neuen Rekruten für unsere Miliz.";
const string MartinMilizEmpfehlung_Addon_3 = "Er hat sich bei mir schon durch einige schwierige und standesgemässe Dienste verdient gemacht.";
const string MartinMilizEmpfehlung_Addon_4 = "Ich bin mir sicher, dass er sich sehr gut eignet um den König und das Wohl der Bürger dieser Stadt zu schützen.";
const string MartinMilizEmpfehlung_Addon_5 = "Innos schütze den König";
const string MartinMilizEmpfehlung_Addon_6 = "     Proviantmeister Martin";
func void Use_MartinMilizEmpfehlung_Addon ()
{   
 
	var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
					Doc_SetFont		(nDocID, -1, FONT_Book);
					Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLines	(nDocID,  0, MartinMilizEmpfehlung_Addon_1								);
					Doc_PrintLines	(nDocID,  0, ""													);
					Doc_PrintLines	(nDocID,  0, MartinMilizEmpfehlung_Addon_2);
					Doc_PrintLines	(nDocID,  0, MartinMilizEmpfehlung_Addon_3);
					Doc_PrintLines	(nDocID,  0, MartinMilizEmpfehlung_Addon_4);
					Doc_PrintLine	(nDocID,  0, MartinMilizEmpfehlung_Addon_5							);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, MartinMilizEmpfehlung_Addon_6						);
					Doc_Show		(nDocID);
		
};


//**********************************************************************************
//	Ravens Befehle an Dexter
//----------------------------------------------------------------------------------

INSTANCE ItWr_RavensKidnapperMission_Addon		(C_Item)
{
	name 				=	"Befehle";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_RavensKidnapperMission_Addon;
	scemeName			=	"MAP";
	description			=  	name;
	
	TEXT[2]				= 	"Ich habe dieses Schreiben ";
	TEXT[3]				= 	"dem Banditen Dexter abgenommen";

	
};
var int Use_RavensKidnapperMission_Addon_OneTime;
const string RavensKidnapperMission_Addon_1 = "Dexter, du Mistkerl!";
const string RavensKidnapperMission_Addon_2 = "Als ich noch Erzbaron war, warst du nicht so unzuverlässig.";
const string RavensKidnapperMission_Addon_3 = "Wenn du es nicht schaffst, noch mehr Bürger aus der Stadt zu entführen und zu mir zu entsenden, dann werden wir bald ein handfestes Problem mit den Jungs in unserem Versteck haben. ";
const string RavensKidnapperMission_Addon_4 = "Ich brauche hier mehr Sklaven, sonst starten die Jungs hier noch eine Revolte. Und was das heißt, muss ich dir nicht sagen, oder?";
const string RavensKidnapperMission_Addon_5 = "Ich stehe kurz davor in den Tempel hinein zu gelangen. Da kann ich mir Störungen dieser Art nicht leisten.";
const string RavensKidnapperMission_Addon_6 = "Und noch ein Problem:";
const string RavensKidnapperMission_Addon_7 = "Auf kurz oder lang müssen wir einen Weg über die hohen Berge im Nordosten von Khorinis finden. Die Piraten machen die Überfahrten sicher nicht mehr lange mit, wenn wir sie nicht mehr dafür bezahlen.";
const string RavensKidnapperMission_Addon_8 = "     Raven";
func void Use_RavensKidnapperMission_Addon ()
{   
 	if (Use_RavensKidnapperMission_Addon_OneTime == FALSE)
 	&& (MIS_Addon_Vatras_WhereAreMissingPeople != 0)
 	{
	 	Log_CreateTopic (TOPIC_Addon_WhoStolePeople, LOG_MISSION);
		Log_SetTopicStatus(TOPIC_Addon_WhoStolePeople, LOG_RUNNING);
		B_LogEntry (TOPIC_Addon_WhoStolePeople,TOPIC_Addon_WhoStolePeople_3); 
		Use_RavensKidnapperMission_Addon_OneTime = TRUE;
	};

 	SCKnowsMissingPeopleAreInAddonWorld = TRUE;

	var int nDocID;
		
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLines	(nDocID,  0, RavensKidnapperMission_Addon_1);
				Doc_PrintLine	(nDocID,  0, ""														);
				Doc_PrintLines	(nDocID,  0, RavensKidnapperMission_Addon_2);
				Doc_PrintLines	(nDocID,  0, RavensKidnapperMission_Addon_3);
				Doc_PrintLines	(nDocID,  0, RavensKidnapperMission_Addon_4);
				Doc_PrintLines	(nDocID,  0, RavensKidnapperMission_Addon_5);
				Doc_PrintLines	(nDocID,  0, RavensKidnapperMission_Addon_6								);
				Doc_PrintLines	(nDocID,  0, RavensKidnapperMission_Addon_7);
				Doc_PrintLine	(nDocID,  0, ""														);
				Doc_PrintLine	(nDocID,  0, RavensKidnapperMission_Addon_8											);
				Doc_Show		(nDocID);
		
};

//**********************************************************************************
//	Empfehlungsschreiben für Pedro, ins Kloster eingelassen zu werden.
//----------------------------------------------------------------------------------

INSTANCE ItWr_Vatras_KDFEmpfehlung_Addon		(C_Item)
{
	name 				=	"Vatras Empfehlungsschreiben";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_VatrasKDFEmpfehlung_Addon;
	scemeName			=	"MAP";
	description			=  	"Vatras Empfehlungsschreiben";
	
	TEXT[2]				= 	"dieses Schreiben soll mir helfen ohne";
	TEXT[3]				= 	"Tribut ins Kloster der Feuermagier";
	TEXT[4]				= 	"eingelassen zu werden.";

	
};
const string VatrasKDFEmpfehlung_Addon_1 = "Brüder des Feuers";
const string VatrasKDFEmpfehlung_Addon_2 = "Mir wurde soeben zugetragen, dass es einen Tribut erfordert, in eure Gefilde eingelassen zu werden.";
const string VatrasKDFEmpfehlung_Addon_3 = "Ich übermittle mit diesem Schreiben eine gläubigen Mann, der Novize in euren Reihen werden will.";
const string VatrasKDFEmpfehlung_Addon_4 = "     Vatras";
func void Use_VatrasKDFEmpfehlung_Addon ()
{   
 
	var int nDocID;
		
			nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, VatrasKDFEmpfehlung_Addon_1);
					Doc_PrintLines	( nDocID,  0, "");					
					Doc_PrintLines	( nDocID,  0, VatrasKDFEmpfehlung_Addon_2);
					Doc_PrintLines	( nDocID,  0, VatrasKDFEmpfehlung_Addon_3					);
					//Doc_PrintLine	( nDocID,  0, "Ich hoffe, dass ich nicht persönlich erscheinen muss ihm den Einlass ");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, VatrasKDFEmpfehlung_Addon_4);
					Doc_Show		( nDocID );				
		
};

/******************************************************************************************/
INSTANCE ItMi_LostInnosStatue_Daron (C_Item)
{
	name 				=	"Wertvolle Innos Statue";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_InnosStatue;

	visual 				=	"ItMi_InnosStatue.3DS";
	material 			=	MAT_METAL ;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};


//**********************************************************************************
//	Abschiedsbrief von Lucia an Elvrich
//----------------------------------------------------------------------------------

INSTANCE ItWr_LuciasLoveLetter_Addon		(C_Item)
{
	name 				=	"Lucias Abschiedsbrief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_LuciasLoveLetter_Addon;
	scemeName			=	"MAP";
	description			=  	name;
	
};
const string LuciasLoveLetter_Addon_1 = "Liebster Elvrich";
const string LuciasLoveLetter_Addon_2 = "Mir fehlen die Worte um zu beschreiben, wie leid es mir tut.";
const string LuciasLoveLetter_Addon_3 = "Ich weiß, dass du es nicht verstehen wirst, aber ich bin zu dem Schluss gekommen, dass es besser für uns beide ist, wenn du dir ein anständigeres Mädchen als mich suchst.";
const string LuciasLoveLetter_Addon_4 = "Von dort, wo ich jetzt hin gehe, werde ich nicht mehr zurück kehren. Vergiss mich. Eine Dirne wie ich ist nichts für so einen aufrechten Kerl, wie du einer bist. Leb' wohl.";
const string LuciasLoveLetter_Addon_5 = "     Lucia";
func void Use_LuciasLoveLetter_Addon ()
{   
 
	Log_CreateTopic (TOPIC_Addon_Lucia, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_Lucia, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_Lucia,TOPIC_Addon_Lucia_1); 
	MIS_LuciasLetter = LOG_RUNNING;
	var int nDocID;
		
			nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, LuciasLoveLetter_Addon_1);
					Doc_PrintLines	( nDocID,  0, "");					
					Doc_PrintLines	( nDocID,  0, LuciasLoveLetter_Addon_2);
					Doc_PrintLines	( nDocID,  0, LuciasLoveLetter_Addon_3					);
					Doc_PrintLines	( nDocID,  0, LuciasLoveLetter_Addon_4);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, LuciasLoveLetter_Addon_5);
					Doc_Show		( nDocID );				
};

//****************************************************************************
//				Effectitems
//			---------------------------------------------
//****************************************************************************

PROTOTYPE  EffectItemPrototype_Addon (C_Item)	
{
	name 				=	"Stein";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Coal;

	visual 				=	"ItMi_Coal.3ds";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
	
	INV_ZBIAS			= INVCAM_ENTF_MISC_STANDARD;
	
};

INSTANCE ItMi_AmbossEffekt_Addon (EffectItemPrototype_Addon)
{
};
INSTANCE ItMi_OrnamentEffekt_FARM_Addon (EffectItemPrototype_Addon)
{
};
INSTANCE ItMi_OrnamentEffekt_FOREST_Addon (EffectItemPrototype_Addon)
{
};
INSTANCE ItMi_OrnamentEffekt_BIGFARM_Addon (EffectItemPrototype_Addon)
{
};
/******************************************************************************************/
// Hacke 
INSTANCE ItMi_Rake (C_Item)
{
	name 				=	"Hacke";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Rake;

	visual 				=	"ItMi_Rake.3DS";
	material 			=	MAT_WOOD;

	scemeName			=	"RAKE";
	on_state[1]			= 	Use_Rake;
	description			= 	name;
	
	//TEXT[3]				=   "(Lässt sich bei geöffnetem Inventar benutzen)";
	//TEXT[4]				=   "('Aktionstaste' + 'Pfeil- Vorne' gedrückt halten)";
	
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
	
	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	//inv_rotx		= 180;
};
func void Use_Rake()
{
	//B_SCUsesRake (self); //Schatz ausgraben ist jetzt Mobsi mit itmw_2h_Axe_L_01
};

/******************************************************************************************/
INSTANCE ItRi_Addon_BanditTrader(C_Item)	//Händlergildenring
{
	name 					=	"Gildenring";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	5 ;

	visual 					=	"ItRi_Prot_Point_02.3ds";

	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				= 	"Gravierter Ring";
	
	TEXT[2]					= 	"der Übersee-Händlergilde Araxos";
	
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
		
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

//**********************************************************************************
//	ItWr_Addon_BanditTrader
//----------------------------------------------------------------------------------

INSTANCE ItWr_Addon_BanditTrader		(C_Item)
{
	name 				=	"Lieferung";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_ItWr_Addon_BanditTrader;
	scemeName			=	"MAP";
	description			=  	name;
	
	TEXT[2]				= 	"Dieses Schreiben habe ich bei";
	TEXT[3]				= 	"den Banditen hinter Sekobs Hof gefunden.";

	
};
var int Use_ItWr_Addon_BanditTrader_OneTime;
const string ItWr_Addon_BanditTrader_1 = "15 Kurzschwerter";
const string ItWr_Addon_BanditTrader_2 = "20 Degen";
const string ItWr_Addon_BanditTrader_3 = "25 Laib Brot";
const string ItWr_Addon_BanditTrader_4 = "15 Flaschen Wein";
const string ItWr_Addon_BanditTrader_5 = "Das war das letzte Mal. ";
const string ItWr_Addon_BanditTrader_6 = "Die Sache wird mir langsam zu heiß";
const string ItWr_Addon_BanditTrader_7 = "     Fernando";
func void Use_ItWr_Addon_BanditTrader ()
{   
 	BanditTrader_Lieferung_Gelesen = TRUE;
 	var int nDocID;
		
			nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, ItWr_Addon_BanditTrader_1);
					Doc_PrintLines	( nDocID,  0, ItWr_Addon_BanditTrader_2					);
					Doc_PrintLines	( nDocID,  0, ItWr_Addon_BanditTrader_3);
					Doc_PrintLines	( nDocID,  0, ItWr_Addon_BanditTrader_4					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, ItWr_Addon_BanditTrader_5					);
					Doc_PrintLines	( nDocID,  0, ItWr_Addon_BanditTrader_6					);
					Doc_PrintLines	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, ItWr_Addon_BanditTrader_7);
					Doc_Show		( nDocID );				
	
	if (MIS_Vatras_FindTheBanditTrader != 0)
	&& (Use_ItWr_Addon_BanditTrader_OneTime == FALSE)
	{
		B_LogEntry (TOPIC_Addon_BanditTrader,TOPIC_Addon_BanditTrader_1); 
		Use_ItWr_Addon_BanditTrader_OneTime = TRUE;
	};
};

//****************************************************************************
//				Vatras schickt SC zu Saturas
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_Vatras2Saturas_FindRaven	(C_Item)
{
	name 				=	"Botschaft";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Vatras2Saturas_FindRaven_Sealed;
	scemeName			=	"MAPSEALED";
	description			= 	name;
	TEXT[2]				=   "Vatras Schreiben für Saturas";

};
const string Vatras2Saturas_FindRaven_1 = "Werter Saturas";
const string Vatras2Saturas_FindRaven_2 = "Ich hoffe, ihr seid schon bald am Ziel. Unsere Situation hier in der Stadt scheint sich zur Zeit etwas zu entspannen. Aber ich fürchte, die Ruhe trügt. Ihr solltet euch beeilen. Ich brauche euch hier.";
const string Vatras2Saturas_FindRaven_3 = "Ich habe deine Aufzeichnungen studiert und kann deinen Verdacht bestätigen. Die Schriftzeichen deuten tatsächlich auf eine Adanosgläubige Kultur hin. Seid also vorsichtig und lasst euch nicht von falschen Propheten blenden.";
const string Vatras2Saturas_FindRaven_4 = "Die vermissten Bürger von Khorinis wurden von dem ehemaligen Erzbaron Raven in die Region verschleppt, in die das Portal offensichtlich führen wird.";
const string Vatras2Saturas_FindRaven_5 = "Noch eines: Ich habe euch Hilfe entsendet. Der Überbringer dieser Nachricht ist etwas ganz besonderes. Er hat so einen bemerkenswerten Glanz in seinen Augen. Ich bin mir nicht sicher, aber es könnte ER sein, auch wenn wir ihn uns anders vorgestellt haben.";
const string Vatras2Saturas_FindRaven_6 = "Prüfe ihn. Ich denke, ich habe recht.";
const string Vatras2Saturas_FindRaven_7 = "     Vatras";
func void Use_Vatras2Saturas_FindRaven ()
{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  1 );                         
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 	); 
					Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   	);  
					Doc_PrintLine	( nDocID,  0, Vatras2Saturas_FindRaven_1					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, Vatras2Saturas_FindRaven_2					);
					Doc_PrintLines	( nDocID,  0, Vatras2Saturas_FindRaven_3					);
					Doc_PrintLines	( nDocID,  0, Vatras2Saturas_FindRaven_4					);
					Doc_PrintLines	( nDocID,  0, Vatras2Saturas_FindRaven_5					);
					Doc_PrintLines	( nDocID,  0, Vatras2Saturas_FindRaven_6					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, Vatras2Saturas_FindRaven_7					);
					Doc_Show		( nDocID );
		
}; 

func void Use_Vatras2Saturas_FindRaven_Sealed ()
{   
	CreateInvItems (self, ItWr_Vatras2Saturas_FindRaven_opened,1);
	Vatras2Saturas_FindRaven_Open = TRUE;
	Use_Vatras2Saturas_FindRaven ();
}; 
INSTANCE ItWr_Vatras2Saturas_FindRaven_opened	(C_Item)
{
	name 				=	"Geöffnete Botschaft";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Vatras2Saturas_FindRaven;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[2]				=   "Vatras Schreiben für Saturas";
};

//------------------------------------------------------------------------------------------
// Amulett des suchenden Irrlichts
//------------------------------------------------------------------------------------------
	INSTANCE  ItAm_Addon_WispDetector (C_Item)  
{
	name 			=	"Erzamulett";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_DexStrg;

	visual 			=	"ItAm_Mana_01.3ds";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER_BLUE"; 

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_WispDetector;
	on_unequip		=	UnEquip_WispDetector;

	description		=  "Erzamulett des suchenden Irrlichts";

	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	
};
	var int Equip_WispDetector_OneTime;

	FUNC VOID Equip_WispDetector()
	{
			if (Equip_WispDetector_OneTime == FALSE)
			{
				PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NF] = TRUE; //das erste Talent gibt's gratis
				WispSearching = WispSearch_NF;
				Equip_WispDetector_OneTime = TRUE;
			};
			
			var C_NPC DetWsp;
			DetWsp = Hlp_GetNpc (Wisp_Detector);
			AI_Teleport (DetWsp, "TOT");
			Wld_SpawnNpcRange	(self,	Wisp_Detector,	1,	500);
 			Wld_PlayEffect("spellFX_LIGHTSTAR_WHITE",  Wisp_Detector, Wisp_Detector, 0, 0, 0, FALSE );
			Snd_Play ("MFX_Transform_Cast");
			//Wld_PlayEffect("spellFX_SummonCreature_ORIGIN",  hero, hero, 0, 0, 0, FALSE );
	};


	FUNC VOID UnEquip_WispDetector()
	{
			
			var C_NPC DetWsp;
			DetWsp = Hlp_GetNpc (Wisp_Detector);

			if (Npc_IsDead(DetWsp) == FALSE)
			{
				Snd_Play ("WSP_Dead_A1");
			};

			AI_Teleport (DetWsp, "TOT");
			B_RemoveNpc (DetWsp);
			AI_Teleport (DetWsp, "TOT");
	};

//Alligatorfleisch
	
INSTANCE ItFo_Addon_Krokofleisch_Mission (C_Item)
{	
	name 				=	"Sumpfrattenfleisch";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;
	
	value 				=	Value_RawMeat;
	
	visual 				=	"ItFoMuttonRaw.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"MEAT";
	
	description			= 	name;
	TEXT[1]				=	"Riecht irgendwie fischig!";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	Value_RawMeat;

};

INSTANCE ItRi_Addon_MorgansRing_Mission (C_Item)
{	
	name 				=	"Morgans Ring";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING|ITEM_MISSION;
	
	value 				=	500;
	
	visual 				=	"ItRi_Prot_Total_02.3DS";
	material 			=	MAT_METAL;
	
	on_equip				=  	Equip_MorgansRing;
	on_unequip				= 	UnEquip_MorgansRing;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= name;
	
	
	TEXT[1]			= "Der Ring ist mit lauter feinen Runen verziert.";
	TEXT[2]			= NAME_ADDON_BONUS_1H;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
		
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;

};

FUNC VOID Equip_MorgansRing()
{
	B_AddFightSkill (self, NPC_TALENT_1H, 10);
};

FUNC VOID UnEquip_MorgansRing()
{
	B_AddFightSkill (self, NPC_TALENT_1H, -10);
};


INSTANCE ItMi_Focus (C_Item)
{
	name 				=	"Fokusstein";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};
//---------------------------------------------------------------------------
//				Stahl Paket für Huno
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Steel_Paket(C_Item)
{
	name 				=	"Stahl - Paket";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	300;

	visual 				=	"ItMi_Packet.3ds";
	
	material 			=	 MAT_LEATHER;
	
	description			= 	name;
	TEXT[2]				= 	"Diese Paket ist WIRKLICH schwer";
	TEXT[3]				=	"Es enthält einen dicken Stahlklumpen";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value;

};

//------------------------------------------------------------------------------------------
// 	ItWr_StonePlateCommon_Addon
//------------------------------------------------------------------------------------------
instance ItWr_StonePlateCommon_Addon (C_Item)
{
	name 				=	"Alte Steintafel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_StonePlateCommon;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[2]				= 	"Eine graue Steintafel";
	TEXT[3]				=	"";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};
//---------------------------------------------------------------------------
const string StonePlateCommon_1 = "Die Kaste der Krieger hatte den Zorn unseres Gottes heraufbeschworen.";
const string StonePlateCommon_2 = "RHADEMES, der Nachfolger QUAHODRONS, wurde gebannt. Aber seine böse Macht erreichte uns selbst vom Ort seiner Verbannung noch.";
const string StonePlateCommon_3 = "Wir waren machtlos dagegen.";
const string StonePlateCommon_4 = "ADANOS Zorn hat JHARKENDAR getroffen!";
func void Use_StonePlateCommon ()
{
	var int nDocID;
		
	
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_03.TGA"  , 0 	); 
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, StonePlateCommon_1);	
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, StonePlateCommon_2);
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, StonePlateCommon_3);
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, StonePlateCommon_4);	
	}
	else //Spieler beherrscht Sprache nicht
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_02.TGA"  , 0 	); 
		/*
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Oksefd nodnf Kwe. Erfjkemvfj Hwoqmnyhan ckh Sebnejbuwd Weinfiwjf Ihwqpjrnn.");	
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "RHADEMES revfnbrebuiwe QUAHODRON ewohjfribwe wef Gkjsdhad smoelk. Ihdh Znshen Fjewheege Egdgsmkd Ygc slje smoelkor.");
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "Esfjwedbwe ewzbfujbwe Iuhdfb");	
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "ADANOS Ygc Egdgsmkd JHARKENDAR!");	
		*/
		B_Say (self, self, "$CANTREADTHIS");	
	};
		
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//				Die 5 Steintafeln  
//---------------------------------------------------------------------------

INSTANCE ItMi_Addon_Stone_01(C_Item) //Esteban und Thorus  //Joly:Die Banditen benutzen diese Steintafeln als Zahlungsmittel.
{
	name 				=	"Rote Steintafel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_03.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_01;
	scemeName			=	"MAP";

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	
	description			= 	name;
	TEXT[2]				= 	"Eine rote Steintafel";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
const string Addon_Stone_01_1 = "Wir, die letzten drei Anführer des Rates der Fünf, haben die Kammern des Tempels mit Fallen versehen und den Eingang versteckt, auf das das Schwert nie wieder das Tageslicht erblicke.";
const string Addon_Stone_01_2 = "Erfjkemvfj Hwoqmnyhan ckh. Fjewheege Egdgsmkd Ygc slje asdkjhnead Gkjsdhad Uhndter rygilliambwe ewzbfujbwe Iuhdfb. Revfnbrebuiwe ewohjfribwe wef. Sebnejbuwd Weinfiwjf Ihwqpjrnn.";
FUNC VOID Use_Addon_Stone_01()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_02.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, Addon_Stone_01_1);
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, Addon_Stone_01_2);
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//		Steintafel 5		
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Stone_05(C_Item) //Valley - Totenwächter
{
	name 				=	"Gelbe Steintafel"; 

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_04.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_05;
	scemeName			=	"MAP";

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[2]				= 	"Eine gelbe Steintafel";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
const string Addon_Stone_05_1 = "Ich, der sich gegen den Entschluß der Drei gestellt hatte, erbaute die erste Falle. Und nur ich kenne die richtige Pforte.";
const string Addon_Stone_05_2 = "Fjewheege Egdgsmkd Ygc slje asdkjhnead Gkjsdhad Uhnd Esfjwedbwe ewzbfujbwe Iuhdfb. Sebnejbuwd Weinfiwjf Ihwqpjrnn. Erfjkemvfj Hwoqmnyhan ckh.";
FUNC VOID Use_Addon_Stone_05()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_01.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, Addon_Stone_05_1);
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, Addon_Stone_05_2);
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//		Steintafel 3		
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Stone_03(C_Item) //Valley - Priester
{
	name 				=	"Blaue Steintafel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_05.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_03;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	description			= 	name;
	TEXT[2]				= 	"Eine blaue Steintafel";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
const string Addon_Stone_03_1 = "KHARDIMON ersann die zweite Falle. Und nur der, der den Weg des Lichts bis zum Ende geht, wird die dritte Kammer erreichen.";
const string Addon_Stone_03_2 = "KHARDIMON Weinfiwjf Ihwqpjrnn. Erfjkemvfj Hwoqmnyhan ckh. Gkjsdhad Uhnd Esfjwedbwe ewzbfujbwe.";
FUNC VOID Use_Addon_Stone_03()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_03.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, Addon_Stone_03_1);
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, Addon_Stone_03_2);
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_PrintLines	( nDocID,  0, "");
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//		Steintafel 4		
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Stone_04(C_Item)  //DAS DING AUS DEM SENAT /SUMPF  //Joly: Haus der Heiler
{
	name 				=	"Grüne Steintafel"; 

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_01.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_04;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	description			= 	name;
	TEXT[2]				= 	"Eine grüne Steintafel";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
const string Addon_Stone_04_1 = "Die dritte Falle wurde von QUARHODRON erbaut, und nur er weiß, wie man die Pforte öffnet.";
const string Addon_Stone_04_2 = "Esfjwedbwe ewzbfujbwe. Fjewheege QUARHODRON Ygc slje asdkjhnead. Sebnejbuwd Weinfiwjf Ihwqpjrnn. Gkjsdhad Uhnd.";
FUNC VOID Use_Addon_Stone_04()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_04.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, Addon_Stone_04_1);
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, Addon_Stone_04_2);
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//		Steintafel 5		
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Stone_02(C_Item) //Bibliothek der Erbauer.
{
	name 				=	"Violette Steintafel"; 

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_02.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_02;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	description			= 	name;
	TEXT[2]				= 	"Eine violette Steintafel";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
const string Addon_Stone_02_1 = "QUARHODRON war es auch, der mit der Hilfe von KHARDIMON das äußere Tor zum Tempel versiegelte. Keiner von beiden hat das Ritual überlebt.";
const string Addon_Stone_02_2 = "Nur ich blieb zurück, um von den Ereignissen zu erzählen.";
const string Addon_Stone_02_3 = "Ich hoffe, daß RHADEMES für alle Zeiten im Tempel verrottet!";
const string Addon_Stone_02_4 = "QUARHODRON Ygc slje asdkjhnead. KHARDIMON Weinfiwjf Ihwqpjrnn. Erfjkemvfj Hwoqmnyhan ckh. Fjewheege Egdgsmkd Esfjwedbwe asdkjhnead. Gkjsdhad Uhnd.";
const string Addon_Stone_02_5 = "Revfnbrebuiwe ewohjfribwe wef. Sebnejbuwd Weinfiwjf Ihwqpjrnn.";
const string Addon_Stone_02_6 = "Erfjkemvfj RHADEMES Fjewheege Egdgsmkd!";
FUNC VOID Use_Addon_Stone_02()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_05.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, Addon_Stone_02_1);
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, Addon_Stone_02_2);
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, Addon_Stone_02_3);
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, Addon_Stone_02_4);
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, Addon_Stone_02_5);
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, Addon_Stone_02_6);
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};




//*******************************************
//		Der goldene Kompass
//*******************************************

INSTANCE ItMI_Addon_Kompass_Mis (C_Item)
{
	name 				=	"Goldener Kompass";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	500;

	visual 				=	"ItMi_Compass_01.3DS";
	material 			=	MAT_STONE;

	description			= 	name;

};

//*******************************************
//			Morgans Schatz
//*******************************************

INSTANCE ItSE_Addon_FrancisChest	(C_Item)
{
	name 				=	"Schatzkiste";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	200;

	visual 				=	"ItMi_GoldChest.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   FrancisChest;
	
	description			= 	"Eine Schatzkiste";
	
	TEXT[0]				= 	"Die Kiste ziemlich schwer.";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[4]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID FrancisChest ()
{
		
		CreateInvItems (hero,ItMi_GoldChest,1);
		CreateInvItems (hero,ItMw_FrancisDagger_Mis,1);
		CreateInvItems (hero,Itmi_Gold,153);
		CreateInvItems (hero,ItMi_GoldCup,1);
		CreateInvItems (hero,ItMi_SilverNecklace,1);
		CreateInvItems (hero,ITWR_Addon_FrancisAbrechnung_Mis,1);
		
		Snd_Play ("Geldbeutel");
		Print (PRINT_FRANCIS_CHEST);
};

INSTANCE ITWR_Addon_FrancisAbrechnung_Mis (C_ITEM)
{
	name 					=	"Heuerbuch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	NAME;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseFrancisAbrechnung_Mis;
};

const string FrancisAbrechnung_Mis_1 = "Kauffahrer 'Seejungfrau'";
const string FrancisAbrechnung_Mis_2 = "Beute gesamt: 14560 Gold";
const string FrancisAbrechnung_Mis_3 = "-----------------------";
const string FrancisAbrechnung_Mis_4 = "Mannschaft : 9840 ";
const string FrancisAbrechnung_Mis_5 = "Offiziere   : 2500 ";
const string FrancisAbrechnung_Mis_6 = "Kapitän    : 1000 ";
const string FrancisAbrechnung_Mis_7 = "-----------------------";
const string FrancisAbrechnung_Mis_8 = "eigener Anteil: 2220";
const string FrancisAbrechnung_Mis_9 = "Fernhändler 'Miriam'";
const string FrancisAbrechnung_Mis_10 = "Beute gesamt: 4890 Gold";
const string FrancisAbrechnung_Mis_11 = "-----------------------";
const string FrancisAbrechnung_Mis_12 = "Mannschaft : 2390 ";
const string FrancisAbrechnung_Mis_13 = "Offiziere   : 500 ";
const string FrancisAbrechnung_Mis_14 = "Kapitän    : 500 ";
const string FrancisAbrechnung_Mis_15 = "----------------------";
const string FrancisAbrechnung_Mis_16 = "eigener Anteil: 1000 ";
const string FrancisAbrechnung_Mis_17 = "Handelsschiff 'Nico'";
const string FrancisAbrechnung_Mis_18 = "Beute gesamt: 9970 ";
const string FrancisAbrechnung_Mis_19 = "----------------------";
const string FrancisAbrechnung_Mis_20 = "Mannschaft : 5610 ";
const string FrancisAbrechnung_Mis_21 = "Offiziere   : 1500";
const string FrancisAbrechnung_Mis_22 = "Kapitän    : 1000";
const string FrancisAbrechnung_Mis_23 = "----------------------";
const string FrancisAbrechnung_Mis_24 = "eigener Anteil: 1860";
const string FrancisAbrechnung_Mis_25 = "Kauffahrer 'Maria'";
const string FrancisAbrechnung_Mis_26 = "Beute gesamt: 7851 Gold";
const string FrancisAbrechnung_Mis_27 = "----------------------";
const string FrancisAbrechnung_Mis_28 = "Mannschaft : 4400 ";
const string FrancisAbrechnung_Mis_29 = "Offiziere   : 750 ";
const string FrancisAbrechnung_Mis_30 = "Kapitän    : 1000 ";
const string FrancisAbrechnung_Mis_31 = "----------------------";
const string FrancisAbrechnung_Mis_32 = "eigener Anteil: 1701 ";
	FUNC VOID UseFrancisAbrechnung_Mis()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_1	);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_2);
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_3	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_4);
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_5);
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_6);
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_7	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_8);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_9	);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_10);
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_11	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_12);
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_13);
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_14);
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_15	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, FrancisAbrechnung_Mis_16);
					Doc_PrintLine	( nDocID,  0, "");
	

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_17	);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_18);
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_19	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_20);
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_21);
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_22);
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_23	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_24);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_25	);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_26);
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_27	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_28);
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_29);
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_30);
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_31	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, FrancisAbrechnung_Mis_32);
					Doc_PrintLine	( nDocID,  1, "");
					
					Francis_HasProof = TRUE;
					
					Doc_Show		( nDocID );
					
					B_Say (self, self, "$ADDON_THISLITTLEBASTARD");	   

};

//-----------------------------------------------------------------------
//		Gregs Logbuch
//-----------------------------------------------------------------------

INSTANCE ITWR_Addon_GregsLogbuch_Mis (C_ITEM)
{
	name 					=	"Logbuch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_01.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Logbuch von Greg";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseGregsLogbuch;
};

const string GregsLogbuch_1 = "Ich kann diesen Strand nicht mehr sehen. Überall Sand. Ich kann schon gar nicht mehr richtig schlafen, weil es überall juckt. Wird Zeit, dass Raven das Gold für die Gefangen rüberschiebt und wir wieder in See stechen können. Werde wohl mal ein ernstes Wort mit dem Aufgeblasen Fatzke sprechen müssen.";
const string GregsLogbuch_2 = "Was erlaubt sich dieses Arsch? Hat mich von seinen stinkenden Schergen am Tor abwimmeln lassen. Der wird mich noch kennenlernen! Seinen Speichellecker Bloodwyn werde ich eigenhändig zu Fischfutter verarbeiten";
const string GregsLogbuch_3 = "Wenn er nicht bald zahlt, werde ich andere Seiten aufziehen. ";
const string GregsLogbuch_4 = "Die Banditen werden langsam aufsässig. Die letzte Lieferung haben sie immer noch nicht bezahlt. Wir haben einfach zu wenig Informationen. Ich muss rausfinden, was Raven hier will.";
const string GregsLogbuch_5 = "Ich werde mit dem Großteil der Mannschaft zum Festland fahren und das Erz in Sicherheit bringen. Francis bleibt mit ein paar Leuten hier und befestigt das Lager. ";
const string GregsLogbuch_6 = "Damit die Zeit nicht ungenutzt verstreicht, habe ich Bones die Rüstung gegeben. Er wird für mich ins Banditenlager schleichen und dort rausfinden, was Raven vorhat.";
	FUNC VOID UseGregsLogbuch()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, GregsLogbuch_1);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, GregsLogbuch_2	);
					Doc_PrintLines	( nDocID,  0, GregsLogbuch_3);
					

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, GregsLogbuch_4	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, GregsLogbuch_5	);
					Doc_PrintLines	( nDocID,  1, GregsLogbuch_6);
					
					Greg_GaveArmorToBones = TRUE;
					
					Doc_Show		( nDocID );
};
//-----------------------------------------------------------------------
//Bloodwyns Truhenschlüssel - Schwere Garderüstung
//-----------------------------------------------------------------------
INSTANCE ITKE_Addon_Bloodwyn_01 (C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Bloodwyn's Schlüssel";
	
	TEXT[2]				=	"Passt zu einer Truhe";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//-----------------------------------------------------------------------
//Heiler Truhenschlüssel - 
//-----------------------------------------------------------------------
INSTANCE ITKE_Addon_Heiler (C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Schlüssel eines Steinwächters";
	
	TEXT[2]				=	"Passt zu einer Truhe";
	TEXT[3]				=   "In einem seltsamen alten Gebäude im Sumpf";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};




INSTANCE  ItMi_TempelTorKey (C_ITEM)
{	
	name 				=	"Steintafel des Quarhodron";
	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_06.3ds";	 
	material 			=	MAT_STONE;
	scemeName			=	"MAP";
	on_state[0]			=	Use_TempelTorKey;

	TEXT[2]		= "Der Schlüssel zum Tempel Adanos.";

};
const string TempelTorKey_1 = "  Jhehedra Akhantar";
func void Use_TempelTorKey ()
{	
	var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_03.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					//Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					//Doc_PrintLines	( nDocID,  0, "  Eligam Shameris"					); 
				
					Doc_PrintLine	( nDocID,  0, TempelTorKey_1					); 
 
 					Doc_Show		( nDocID ); 
};
//-----------------------------------------------------------------------
//	Bloodwyns Kopf
//-----------------------------------------------------------------------
INSTANCE ItMi_Addon_Bloodwyn_Kopf (C_Item)
{
	name 				=	"Bloodwyn's Kopf";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Head_Bloodwyn_01.3ds";
	material 			=	MAT_LEATHER;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//------------------------------------------------------------------------

instance ItWR_Addon_TreasureMap (C_Item)
{
	name 		= "Schatzkarte"; 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_TreasureMap;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "Auf der Karte sind einige Stellen markiert.";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_TreasureMap()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Addon_TreasureMap);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_AddonWorld_Treasures.tga", TRUE);  // TRUE = scale to fullscreen
				    Doc_SetLevel        (Document, "Addon\AddonWorld.zen");
   					Doc_SetLevelCoords  (Document, -47783, 36300, 43949, -32300);//Joly:gut so
   					Doc_Show			(Document);
	};


//------------------------------------------------------------------------

INSTANCE ItMi_Addon_GregsTreasureBottle_MIS	(C_Item)
{
	name 				=	"Flaschenpost";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItFo_Water.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_GregsBottle;
	scemeName			=	"MAPSEALED";
	description			= 	name;
	TEXT[2]				=   "In der Flasche befindet sich ein Stück Papier";

};
func void Use_GregsBottle ()
{
	B_PlayerFindItem (ItWR_Addon_TreasureMap,1);
};

/******************************************************************************************/
INSTANCE itmi_erolskelch (C_Item)
{
	name 				=	"Zerkratzte silberne Schale";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	125;

	visual 				=	"ItMi_SilverChalice.3DS";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= 	value;
};
