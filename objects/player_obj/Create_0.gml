/// @description Insert description here
// You can write your code in this editor

event_inherited();

hsp = 0;
vsp = 0;
t=0;

collisionMap = layer_tilemap_get_id("Tiles_Collision");
foregroundMap = layer_tilemap_get_id("Tiles_Doors");
doorLayer = layer_get_name("Tiles_Doors");

state = "Moving";

zoom = 1;

camera = instance_create(x,y,camera_obj);

spr = player_float_spr;
spr_rot = 0;
spr_x = 1;
spr_y = 1;

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_char;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "Player";