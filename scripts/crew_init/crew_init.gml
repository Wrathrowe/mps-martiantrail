
var crew = instance_create_depth(x,y,depth,crew_obj);

with (crew) {
	name = argument0;
	sys = argument1;
	special = sys[? "name"];
}

return crew;