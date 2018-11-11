/// @description Insert description here
// You can write your code in this editor

if (instance_exists(crewGen_menu_obj)) exit;

if (!instance_exists(crewGen_menu_obj)) {
	
	event_inherited();
	
	myText[0] = "Let's get your crew together.";
	
	//alarm[0] = 120;

	// Inherit the parent event
	
	crewMenu = instance_create_layer(x-100,y-450,"Instances_Menus",crewGen_menu_obj);
	camera_obj.subject = crewMenu;
	
	
}