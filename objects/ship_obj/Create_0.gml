/// @description Insert description here
// You can write your code in this editor

var Medbay = mecs_init("Medbay");
var Engines = mecs_init("Engines");
var Comms = mecs_init("Comms");
var Systems = mecs_init("Systems");

globalvar MECS;

MECS = [Medbay,Engines,Comms,Systems]

//DEMO ONLY - This will need refactored most likely
CREW = [];

//TODO - Position should be controlled by assignment to MECS
sysPositions = [[360, 200],[342,860],[1564,200],[1560,870]]

for (var i=0; i<array_length_1d(MECS); i++) {
	CREW[i] = crew_init("Jenkins "+string(i+1), MECS[i]);
	var pos = sysPositions[i];
	CREW[i].x = pos[0];
	CREW[i].y = pos[1];
}