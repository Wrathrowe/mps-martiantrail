/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var ready = crew_check_if_ready();
var readyText = "";

if (!ready) {
	readyText = "Your crew isn't ready... See the Academy Officer below us.";
	myText[0] = readyText;
	myNextLine[0] = -1;
}

if (ready) {
	readyText = "You're ready to depart!";
	myText[0] = readyText;
	myNextLine[0] = 1;
	myText[1] = "Shall we commence takeoff?";
	myText[2] = ["Not Yet","Let's Go!"];
	myScripts[2] = [[control_cancel], [control_change_room, ship_room]]//[[change_variable, id, "takeoff", "false"], [change_variable, id, "takeoff", "true"]];
	myNextLine[2] = [-1, 3];
	myTypes = [0,0,1,0];
}

myText[3] = "Sounds good. Get ready for your trip to Mars!";

