/// @description Crew Menu Options
switch (index)
{
	case 0:
	crew_textbox_create(crew,"Just wanna chat, huh?");
	status = 1;
	break;
	
	case 1:
	crew_textbox_create(crew,"Move where?");
	child = menu_create(crewMenu_move_obj, x + 16, y + 16, 0, 0);
	child.crew = crew;
	break;
	
	case 2:
	crew_textbox_create(crew,"See ya, Space Cowboy...");
	instance_destroy();
	break;
}

