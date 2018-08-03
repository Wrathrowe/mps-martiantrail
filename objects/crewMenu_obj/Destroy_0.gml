/// @description Insert description here
// You can write your code in this editor
event_inherited();
if instance_exists(crew_textbox_obj) {
	with crew_textbox_obj {
		alarm_set(0,60);
	}
}