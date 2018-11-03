/// @description Insert description here
// You can write your code in this editor

if !instance_exists(eventGenerator_obj) instance_create(0,0,eventGenerator_obj);

//Call subsystems via the 'subs' ds map

globalvar MECS; 
//MECS = [instance_find(medbay_obj,0),instance_find(engines_obj,0),instance_find(comms_obj,0),instance_find(systems_obj,0)];
MECS = [medbay_obj,engines_obj,comms_obj,systems_obj];
//DEMO ONLY - This will need refactored most likely
globalvar CREW;
CREW = [];

//TODO - Position should be controlled by assignment to MECS
sysPositions = [[360, 100],[342,860],[1400,100],[1400,870]]

for (var i=0; i<array_length_1d(MECS); i++) {
	//Init Crew
	//if (gameController_obj.Crew[i] != "None") {
	
		CREW[i] = crew_init("Jenkins "+string(i+1), MECS[i]);
		CREW[i].x = MECS[i].x+100;
		CREW[i].y = MECS[i].y+100;
	//}
	
}

room_goto_next();