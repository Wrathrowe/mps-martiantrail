var system = ds_map_create();
system[? "name"] = argument0;
system[? "sid"] = string_char_at(argument0, 0);

var subsystems = ds_map_create();
//subsystems[? "parent"] = self;
subsystems[? "P"] = subsystem_create("Physical");
subsystems[? "E"] = subsystem_create("Electrical");
subsystems[? "C"] = subsystem_create("Computerized");

system[? "subs"] = subsystems;

var s = subsystems[? "P"];
show_debug_message(s[? "name"]);

return system;