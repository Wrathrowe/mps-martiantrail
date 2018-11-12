/// @description Insert description here
// You can write your code in this editor

with other.uiAnchor {
	event_user(4);
	easing[? "dest"] = room_width*3/2;
	easing[? "start"] = room_width*1/2;
	easing[? "duration"] = 60;
	easing[? "time"] = 0;
}

if (instance_exists(obj_textevent)) {
	
	with (obj_textevent) {
		with (myTextbox) {instance_destroy();}
		instance_destroy();
	}
}


switch (other.uiControlName) {
	
	case "Fight": case "Attack":
	create_textevent(["Battle Initiated!"], [ai_obj]);
	break;
	
	case "Run":
	create_textevent(["Got away safely!"], [ai_obj]);
	break;
	
	case "Talk":
	create_textevent(["Talk Initiated."], [ai_obj]);
	break;
	
	case "Ignore": 
	create_textevent(["How Rude!"], [ai_obj]);
	break;
	
	case "OK":
	create_textevent(["Job Done."], [ai_obj]);
	break;
	
	case "Investigate":
	create_textevent(["That's when they started the investigation."], [ai_obj]);
	break;
}