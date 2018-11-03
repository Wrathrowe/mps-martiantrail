/// @description Insert description here
// You can write your code in this editor
event_inherited();
myPortrait = spr_char;

//name = "none";
hp = 10;
effMod = 0;
state = "None";
type = "Human";

pecProf = ds_map_create();
pecProf[? "P"] = 0;
pecProf[? "E"] = 0;
pecProf[? "C"] = 0;

textbox = noone;

t = irandom_range(0,175);
spr = crew_spr;

alarm_set(11,irandom_range(120,300));