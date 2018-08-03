/// @description Insert description here
// You can write your code in this editor

if state == "Moving" {
	player_set_dir(16);
	player_check_collision(collisionMap, 64);

	if (distance_to_object(crew_obj) < 120 and keyboard_check_pressed(ord("Z"))) {
		state = "Interacting";
		var _crew = instance_nearest(x,y,crew_obj);
		
		if _crew.state == "Moving" exit;
	
		//debugging
		show_debug_message("Initiated talking with "+_crew.name)
		crew_menu_create(_crew);
	}
}

else if state == "Interacting" {
	if !instance_exists(crewMenu_obj) {
		
		state = "Moving";
	}
}