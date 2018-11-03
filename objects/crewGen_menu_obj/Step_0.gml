/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (InputText_obj.m_editing) exit;

//Delete all menu items to free memory
if (keyboard_check_pressed(vk_escape)) {
	
	camera_obj.subject = player_obj;
	with (ui_defaults) {
		if uiAnchor == other.id {
			instance_destroy();
		}
	}
	with (InputText_obj) {
		instance_destroy();
	}
	instance_destroy();
	exit;
}

crewSelected = CREW[crewMenu.itemindex];
points = 2 - (crewSelected.pecProf[? "P"]+crewSelected.pecProf[? "E"]+crewSelected.pecProf[? "C"]);
points = clamp(points, 0, 2);

for (var i = 0; i < 3; i++) {
	var btn = pecBtns[i];
	for (var j=0; j<3; j++) {
		with (btn[j]) {
			uiMax = other.points+uiValue;
			uiInterval = 1;
		}
	}
}

if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_rshift)) 
&& crewMenu.itemindex < array_length_1d(crewMenu.items)-1 {
	crewMenu.itemindex++;
}

else if (keyboard_check_pressed(vk_left)|| keyboard_check_pressed(vk_lshift)) 
&& crewMenu.itemindex > 0 {
	crewMenu.itemindex--;
}
