/// @description Insert description here
// You can write your code in this editor

if !instance_exists(eventGenerator_obj) instance_create(0,0,eventGenerator_obj);

var Medbay = mecs_init("Medbay");
var Engines = mecs_init("Engines");
var Comms = mecs_init("Comms");
var Systems = mecs_init("Systems");

//Call subsystems via the 'subs' ds map

globalvar MECS;

MECS = [Medbay,Engines,Comms,Systems]

//DEMO ONLY - This will need refactored most likely
CREW = [];

//TODO - Position should be controlled by assignment to MECS
sysPositions = [[360, 100],[342,860],[1400,100],[1400,870]]

for (var i=0; i<array_length_1d(MECS); i++) {
	//Init Crew
	CREW[i] = crew_init("Jenkins "+string(i+1), MECS[i]);
	var pos = sysPositions[i];
	CREW[i].x = pos[0];
	CREW[i].y = pos[1];
	
}