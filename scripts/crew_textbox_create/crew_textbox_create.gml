var crew = argument0;

if instance_exists(crew_textbox_obj) {instance_destroy(crew_textbox_obj)}
var crewbox = instance_create(crew.x,crew.y-120,crew_textbox_obj);

with crewbox {
	x -= sprite_width/2;
	ctb_add_text(argument1);
}

return crewbox;