/// @description Example of nested menus.
switch (index)
{
	case 0:
	crew_textbox_create(crew,"Just wanna chat, huh?");
	status = 1;
	break;
	case 1:
	crew_textbox_create(crew,"Move where?");
	status = 1;
	break;
	case 2:
	crew_textbox_create(crew,"See ya, Space Cowboy...");
	instance_destroy();
	break;
}

