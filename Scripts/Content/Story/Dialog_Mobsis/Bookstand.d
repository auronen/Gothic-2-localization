// ##########################################################################
// ##
// ## Hier stehen alle Buchständermobsiscripte
// ##
// ##########################################################################

//*************************************
//	Buchständer in der Klosterbibliothek
//*************************************

const string Bookstand_01_S1_1 = "Die Prüfung des Feuers";
const string Bookstand_01_S1_2 = "So ein Novize nicht erwählt ist, mag es sein, das er trotzdem die Bereitschaft verspürt sich der Prüfung der Magie zu unterwerfen. Wenn er diesen Entschluß reiflich überlegt hat und er darauf besteht, ist es ihm gewährt, die Prüfung zu verlangen und kein Magier darf sie ihm verweigern. Doch nicht nur die Prüfung der Magie wird ihm auferlegt, sondern er soll durch das Feuer seine Erleuchtung finden. Wenn er vor dem hohen Rat darauf besteht, so soll ihm die PRÜFUNG DES FEUERS gewährt werden.";
const string Bookstand_01_S1_3 = "In dieser Prüfung soll gleichermaßen die Klugheit, Stärke und das Geschick des Novizen gefordert werden. So soll er drei Prüfungen erfüllen, jede empfangen durch einen der Magier des hohen Rates, bevor er den Eid der Flamme schwört und den Bund mit dem Feuer eingehen kann. ";
const string Bookstand_01_S1_4 = "So ist es Innos Wille und so soll es geschehen. ";
const string Bookstand_01_S1_5 = "Der hohe Rat";
func void Use_Bookstand_01_S1() // Buchständer in der Magierbibliothek
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		if (hero.guild == GIL_NOV)
		{
			KNOWS_FIRE_CONTEST = TRUE; // für die Prüfung des Feuers

			Log_CreateTopic(TOPIC_FireContest, LOG_MISSION);
			Log_SetTopicStatus(TOPIC_FireContest, LOG_RUNNING);
			B_LogEntry(TOPIC_FireContest, TOPIC_FireContest_1);
		};

		var int nDocID;

		nDocID = Doc_Create();
		Doc_SetPages(nDocID, 2);
		Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
		Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

		Doc_SetFont(nDocID, -1, FONT_Book);
		Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);

		Doc_PrintLine(nDocID, 0, Bookstand_01_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLines(nDocID, 0, Bookstand_01_S1_2);

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_01_S1_3);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_01_S1_4);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_01_S1_5);
		Doc_Show(nDocID);
	};
};

//*************************************
//	Buchständer in der Geheimen Bibliothek
//*************************************
// --------------------------------------
var int FinalDragonEquipment_Once;
// --------------------------------------

const string FINALDRAGONEQUIPMENT_S1_1 = "...Ich hoffe, dass die Kuppel das Erz vor dem Zugriff Beliars zu schützen vermag. Der König ist einfältig genug zu glauben, dass wir die Kuppel zum Schutz vor Ausbrüchen errichten, doch solange wir mit diesen Ratschlagen unsere höheren Zeile erreichen, soll es uns recht sein. Ich hoffe, das uns genug Zeit bleibt uns auf den Kampf vorzubereiten. Sobald die Kuppel um das Minental erschaffen ist, werde ich mit all meiner mir zur Verfügung stehenden Macht versuchen in den bevorstehenden Kampf einzugreifen. ";
const string FINALDRAGONEQUIPMENT_S1_2 = "...ich habe, genau nach Anleitung einfach Innos geweihtes Wasser auf einen Runenrohling geträufelt und am Runentisch zusammengeführt. Der Runenstein ist zerstört, ich glaube, dieser Spruch ist wirklich nur dem Einen zugänglich.";
const string FINALDRAGONEQUIPMENT_S1_3 = "Die Heilige Aura Innos habe ich dem Klosterschtz übergeben. Sie wird von nun an, vom Klostervorsteher aufbewahrt, bis zu dem Tag, an dem sich der Eine offenbart.";
const string FINALDRAGONEQUIPMENT_S1_4 = "Die Tränen Innos mögen in dem bevorstehenden Kampf eine Rolle spielen. Doch ist es wohl zu gefährlich sie offen aufzubewahren. Ich werde sie hier in der Bibliothek lassen.";
const string FINALDRAGONEQUIPMENT_S1_5 = "Um in den geheimen Ort zu gelangen muss man eine Teleportrune bauen. Dazu benötigst du einen Runenrohling und eine kleines Fläschchen geweihtes Wasser. Mit der erstellten Runen kannst du dich in den Raum teleporteiren.";
const string FINALDRAGONEQUIPMENT_S1_6 = "Ich bin nun sehr sicher, dass es die Tränen Innos waren, mit den die Paladine aus der vorderen Zeit, die längst vergessene Hohe Schwertweihe abgehalten haben. Es sollte also möglich sein, mit dem von mir entdeckten Fläschchen eine geweihten Waffe zusaätzliche Kraft zu geben.";
const string FINALDRAGONEQUIPMENT_S1_7 = "Aus den Waffen des Dracheherren.";
const string FINALDRAGONEQUIPMENT_S1_8 = "´Um einem Panzer aus Drachenschuppen die höchste Härte zu verleihen, so kann man die Schuppen mit dem Erz überzeihen, welches in dem Tal der Insel Karynis gefördert wird.";
const string FINALDRAGONEQUIPMENT_S1_9 = "Um eine dem Drachenherren würdige Klinge zu erhalten, muss man die Klinge in Drachenblut tränken. Schon die Beigabe einer Menge von 5 kleinen Phiolen verleiht dem Stahl eine Härte und Schärfe, der nichts entgegen zu setzten ist.";
const string FINALDRAGONEQUIPMENT_S1_10 = "Anmerkung: Mit Karynis ist zeifelsfrei das heutige Khorinis gemeint.";
func void Use_FINALDRAGONEQUIPMENT_S1() // Buchständer in der geheimen Bibliothek
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

		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, FINALDRAGONEQUIPMENT_S1_1);
		Doc_PrintLines(nDocID, 0, "");

		if (hero.guild == GIL_KDF)
		{
			PlayerGetsAmulettOfDeath = TRUE;
			PLAYER_TALENT_RUNES[SPL_MasterOfDisaster] = TRUE;
			B_LogEntry(TOPIC_TalentRunes, TOPIC_TalentRunes_1);

			Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
			Doc_PrintLine(nDocID, 1, "");
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_2);
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_3);
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_4);
			Doc_Show(nDocID);
		}
		else if (hero.guild == GIL_PAL)
		{
			PAL_KnowsAbout_FINAL_BLESSING = TRUE;
			PLAYER_TALENT_RUNES[SPL_PalTeleportSecret] = TRUE;
			PrintScreen(PRINT_LearnPalTeleportSecret, -1, -1, FONT_Screen, 2);

			Log_CreateTopic(TOPIC_TalentRunes, LOG_NOTE);
			B_LogEntry(TOPIC_TalentRunes, TOPIC_TalentRunes_2);
			Log_AddEntry(TOPIC_TalentRunes, TOPIC_TalentRunes_3);

			Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
			Doc_PrintLine(nDocID, 1, "");
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_5);
			Doc_PrintLine(nDocID, 1, "");
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_6);
			Doc_PrintLine(nDocID, 1, "");
			Doc_Show(nDocID);
		}
		else
		{
			PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] = TRUE;
			PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] = TRUE;

			PrintScreen(PRINT_LearnSmith, -1, -1, FONT_Screen, 2);
			Npc_SetTalentSkill(self, NPC_TALENT_SMITH, 1);
			Log_CreateTopic(TOPIC_TalentSmith, LOG_NOTE);
			B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_1);
			Log_AddEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_2);
			B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_3);
			PlayerGetsFinalDJGArmor = TRUE;

			Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
			Doc_PrintLine(nDocID, 1, "");
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_7);
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_8);
			Doc_PrintLine(nDocID, 1, "");
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_9);
			Doc_PrintLine(nDocID, 1, "");
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_10);
			Doc_Show(nDocID);
		};

		if (FinalDragonEquipment_Once == FALSE)
		{
			B_GivePlayerXP(XP_FinalDragonEquipment);
			FinalDragonEquipment_Once = TRUE;
		};
	};
};
