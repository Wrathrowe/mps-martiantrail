/// @description Insert description here
// You can write your code in this editor
name = "none";
hp = 10;
effMod = 0;
state = "None";

pecProf = ds_map_create();
pecProf[? "P"] = 0;
pecProf[? "E"] = 0;
pecProf[? "C"] = 0;

textbox = noone;

t = irandom_range(0,85);
spr = crew_spr;