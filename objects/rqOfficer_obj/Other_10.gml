/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (!first) {
	//Greeting
	myText[0] = "How may I assist you?";
} else {
	first = false;
	myText[0] = "Welcome, Captian. I'm the Arcadia Corp. Requisitions Officer. We've recieved a distress signal from the Martian colony. Arcadia High Command has tasked me with assisting you in preparing for the journey. While exactly how you prepare is up to you, I'd be happy to assist the process however I can."
	
	objective_remove(self);
	objective_create(shopkeep_obj, "Get PEC Components and Medical Supplies", c_yellow);
	objective_create(academyOfficer_obj, "Visit the Academy Officer and assemble your crew", c_aqua);
}
	myText[1] = ["Where can I find...","Martian Colony","Done"];
	myNextLine[1] = [2,7,-1];

	//Talk
	myText[2] = ["Crew","Ship","Supplies","Nevermind"];
	myNextLine[2] = [3,4,5,6];

	//Crew
	myText[3] = "I'd recommend visiting the Academy to find crew interested in the mission. It can be found south-east of here.";
	myNextLine[3] = 2;

	//Ship
	myText[4] = "Your ship can be found in the shipyard. We've taken the liberty of preparing it for you. Once you have supplies and a crew, you'll be cleared for launch.";
	myNextLine[4] = 2;

	//Supplies
	myText[5] = "Supplies can be requisitioned here. You can find Medical Supplies behind me, and PEC Components on the floor above with the Shopkeep. If you have questions about PEC Components, he can answer them for you.";
	myNextLine[5] = 2;

	//Nevermind
	myText[6] = "Very well. Is there anything else I can assist you with?";
	myNextLine[6] = 1;
	
	//Martian Colony
	myText[7] = "We don't know much about why it went dark. The last official word from the colony was nothing but good news.";
	myText[8] = "The colony is a shining example of Arcadian superiority. If anything were to happen to it...";
	myText[9] = "I'd rather not focus on that right now. Let's focus on getting you spaceborn so we can put an end to all this baseless speculation.";

	myNextLine[9] = 1;

	myText[10] = "";


	myTypes = [0,1,1,0,0,0,0,0,0,0];
