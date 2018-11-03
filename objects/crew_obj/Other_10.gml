/// @description Insert description here
// You can write your code in this editor

//Greeting
myText[0] = crew_get_text("hello");
myText[1] = ["Talk","Move","Done"];
myNextLine[1] = [2,3,5];

//Talk
myText[2] = "Just wanted to chat, huh?";
myNextLine[2] = 1;

//Move
myText[3] = "Where should I move?";
myText[4] = ["Medbay","Engines","Comms","Systems"];
myNextLine[4] = [6,6,6,6];
myScripts[4] = [[crew_move, MECS[0], id],[crew_move, MECS[1], id],[crew_move, MECS[2], id],[crew_move, MECS[3], id]];

//Done
myText[5] = "See you around.";
myNextLine[5] = -1;

//Moving
myText[6] = "On my way!";

//General
myTypes = [0,1,0,0,1,0];

//variable_instance_set(instance_find(camera_obj, 0), "subject", id);