/// @description Insert description here
// You can write your code in this editor
var moveText = "N/A";
switch (index)
{
	case 0:
	moveText = crew_move(crew, "Medbay");
	break;
	
	case 1:
	moveText = crew_move(crew, "Engines");
	break;
	
	case 2:
	moveText = crew_move(crew, "Comms");
	break;
	
	case 3:
	moveText = crew_move(crew, "Systems");
	break;
	
	case 4:
	moveText = "Good. I hate moving.";
	break;
}

crew_textbox_create(crew,moveText);

if (parent != noone) {
	parent.status = 1;
	instance_destroy(parent);
	instance_destroy();
}
