/// @description Insert description here
// You can write your code in this editor
draw_self();

if (instance_exists(player_obj)) {
	image_xscale = x < player_obj.x ? 1 : -1;
}