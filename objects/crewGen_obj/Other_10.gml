/// @description Insert description here
// You can write your code in this editor

if (instance_exists(crewGen_menu_obj)) exit;

if (!instance_exists(crewGen_menu_obj)) {
	
	myText[0] = "Let's get your crew together.";
	
	// Inherit the parent event
	event_inherited();
	crewMenu = instance_create_layer(x-100,y-400,"Instances_Menus",crewGen_menu_obj);
	camera_obj.subject = crewMenu;
}