/// @description Insert description here
// You can write your code in this editor

if state == "Moving" {
	player_set_dir(16);
	player_check_collision(collisionMap, 64);

	if zoom < 1 {
		zoom += .05;
	}
	
	if (distance_to_object(crew_obj) < 120 and keyboard_check_pressed(ord("Z"))) {
		state = "Interacting";
		var _crew = instance_nearest(x,y,crew_obj);
		
		if _crew.state == "Moving" exit;
	
		//debugging
		show_debug_message("Initiated talking with "+_crew.name)
		crew_menu_create(_crew);
		camera.subject = _crew;
	}
}

else if state == "Interacting" {
	
	if zoom > .5 {
		zoom -= .05;
	}
	
	if !instance_exists(p_menu) {
		state = "Moving";
		camera.subject = self;
	}
}

zoom = clamp(zoom, .5, 1);
camera_set_view_size(view_camera[0], view_wport[0]*zoom, view_hport[0]*zoom);