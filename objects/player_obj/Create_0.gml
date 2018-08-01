/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;

collisionMap = layer_tilemap_get_id("Tiles_Collision");
foregroundMap = layer_tilemap_get_id("Tiles_Doors");
doorLayer = layer_get_name("Tiles_Doors");

state = "Moving";