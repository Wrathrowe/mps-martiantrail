
var mSpeed = argument0;

var key_right = keyboard_check_pressed(vk_right);
var key_left = keyboard_check_pressed(vk_left);
var key_up = keyboard_check_pressed(vk_up);
var key_down = keyboard_check_pressed(vk_down);

//Move to anchor
var dir = 0; //check to the right, whatever direction you want to test would be a multiple of 90 degrees.
var count = 32;
var maxGridSize = 64*100;
var xside = 1;
var yside = 1;

if (collider != noone) {
	if point_distance(x,y,collider.x,collider.y) > mSpeed {
		if speed == 0 {
			move_towards_point(collider.x,collider.y,mSpeed);
		}
	} else {
		show_debug_message("Found Anchor: "+collider.myName);
		x = collider.x;
		y = collider.y;
		speed = 0;
		collider = noone;
		return;
	}
}

if (key_left || key_right || key_up || key_down) {

	if key_left && !key_right {xside = -1; yside = 0; dir = 180;};
	else if key_right && !key_left {xside = 1; yside = 0; dir = 0;};
	else if key_up && !key_down {xside = 0; yside = -1; dir = 90};
	else if key_down && !key_up {xside = 0; yside = 1; dir = 270};

	while (collider == noone)
	{
		
		//check for wall
		if collision_line(x+(xside*80), y-sprite_height/2+(yside*80), x + xside*80 + lengthdir_x(count, dir), y-sprite_height/2+(yside*80) + lengthdir_y(count, dir), wall_obj, false, true) {
			return;
		}
		
		collider = collision_line(x+(xside*80), y-sprite_height/2+(yside*80), x + xside*80 + lengthdir_x(count, dir), y-sprite_height/2+(yside*80) + lengthdir_y(count, dir), pAnchor_obj, false, true);
		count += 16;
		// you probably want something in here to break out if you go out too far, other wise you'll end up in an infinite loop.
		if (count >= maxGridSize)
		    break;
	}
	//collider should now equal an instance of whatever object you're testing for.
	
	if (collider != noone) {
		show_debug_message(collider.myName);
	}
}


//hsp = (key_right - key_left) * mSpeed;
//vsp = (key_down - key_up) * mSpeed;
