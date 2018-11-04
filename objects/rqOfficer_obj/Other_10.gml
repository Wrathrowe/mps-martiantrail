/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (first) {
	//create_textevent(
	myText = [
	"Welcome, Captian. I'm the Arcadia Corp. Requisitions Officer.",
	"You can call me Arco.",
	"We've recieved a distress signal from the Martian colony.",
	"Arcadia High Command has tasked me with assisting you in preparing for the journey.",
	"In order to depart, you will need a crew, a ship, and supplies.",
	"While the specifics of each are up to you, I'd be happy to assist however I can.",
	"Come talk to me if you need more information or help finding anything."
	]
	//, rqOfficer_obj);

	objective_remove(self);
	objective_create(shopkeep_obj, "Visit the shop to get supplies", c_yellow);
	objective_create(academyOfficer_obj, "Visit the Academy Officer and assemble your crew", c_aqua);

	//event_perform(ev_other, event_user(0));
	first = false;
	exit;
}

if (!first) {
	//Greeting
	myText[0] = "How may I assist you?";

	myText[1] = ["Where can I find...","Martian Colony","Done"];
	myNextLine[1] = [2,7,-1];

	//Talk
	myText[2] = ["Crew","Ship","Supplies","Nevermind"];
	myNextLine[2] = [3,4,5,6];

	//Ship
	myText[3] = "I'd recommend visiting the Academy to find crew interested in the mission.";
	myNextLine[3] = 2;

	myText[4] = "Your ship can be found in the shipyard. We've taken the liberty of preparing it for you.";
	myNextLine[4] = 2;

	myText[5] = "Supplies can be purchased at the shop. You can find it on the second floor.";
	myNextLine[5] = 2;

	myText[6] = "Very well. Is there anything else I can assist you with?";
	myNextLine[6] = 1;

	myText[7] = "We don't know much about why it went dark. The last official word from the colony was nothing but good news.";
	myText[8] = "The colony is a shining example of Arcadian superiority. If anything were to happen to it...";
	myText[9] = "I'd rather not focus on that right now. Let's focus on getting you spaceborn so we can put an end to all this baseless speculation.";

	myNextLine[9] = 1;

	myText[10] = "";


	myTypes = [0,1,1,0,0,0,0,0,0,0];
}