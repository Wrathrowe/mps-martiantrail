/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var lay_id = layer_get_id("Tiles_Collision");
var map_id = layer_tilemap_get_id(lay_id);
if tilemap_get_at_pixel(map_id,bbox_left+hspeed,y) or tilemap_get_at_pixel(map_id,bbox_right+hspeed,y)  {
	hspeed = -hspeed;
}