/// @description Insert description here
// You can write your code in this editor

if distance_to_object(subject) > 60 {
	//var s = keyboard_check(vk_anykey) ? 12: 0; 
	move_towards_point(subject.x,subject.y+40, 20)
} else {

	x = subject.x;
	y = subject.y;
	
	object_exists(crewGen_menu_obj)
	if object_exists(crewGen_menu_obj) {
		y += 60;
	}
	
}
