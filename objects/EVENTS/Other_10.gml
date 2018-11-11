/// @description Insert description here
// You can write your code in this editor

with other.uiAnchor {
	event_user(4);
	easing[? "dest"] = room_width*3/2;
	easing[? "start"] = room_width*1/2;
	easing[? "duration"] = 60;
	easing[? "time"] = 0;
}
	
if (instance_exists(obj_textbox)) {
	with (obj_textbox) {
		instance_destroy();
	}
}
	
switch (other.uiControlName) {
	
	case "Fight": case "Attack":
	with (player_obj) create_dialogue("Battle Initiated!", -1);
	break;
	
	case "Run":
	with (player_obj) create_dialogue("Got away safely!", -1);
	break;
	
	case "Talk":
	with (player_obj) create_dialogue("Talk Initiated.", -1);
	break;
	
	case "Ignore": 
	with (player_obj) create_dialogue("How Rude!", -1);
	break;
	
	case "OK":
	with (player_obj) create_dialogue("Job Done.", -1);
	break;
	
	case "Investigate":
	with (player_obj) create_dialogue("That's when they started the investigation.", -1);
	break;
}