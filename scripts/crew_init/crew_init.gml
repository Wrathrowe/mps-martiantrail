
var crew = instance_create_layer(x,y,"Layer_Crew",crew_obj);

with (crew) {
	name = argument0;
	sys = argument1;
	special = sys[? "name"];
}

return crew;