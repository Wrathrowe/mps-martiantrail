/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

if camera_obj.subject != player_obj exit;

if (instance_exists(moveto_obj)) {
	//move_towards_point(moveto_obj.x,moveto_obj.y,4);
}

if(!instance_exists(obj_textbox)) {
	
	player_set_dir(8);

	if hspeed != 0 and vspeed == 0 {
		image_xscale = sign(hspeed);
	}

	zoom = lerp(zoom, 1, 0.1);

	//if(zoom == 2)
	//zoom--;

	/*if zoom < 1 {
		zoom += .02;
	}*/
}

else {
	speed = 0;
	collider = noone;
	
	zoom = lerp(zoom, 1.5, 0.1);
	
	
	/*if zoom > .5 {
		zoom -= .02;
	}*/
}

//zoom = clamp(zoom, .5, 1);

//debugging
//zoom = 1;

camera_set_view_size(view_camera[0], (view_wport[0]*.75)/zoom, (view_hport[0]*.75)/zoom);