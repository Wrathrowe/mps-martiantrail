/// @description Insert description here
// You can write your code in this editor

if !instance_exists(player_obj) exit;

if room == ship_room and !instance_exists(obj_textbox) {
	global.Time += 1;
}