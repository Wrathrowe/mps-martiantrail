var crew = argument0;
var side = sign(x - crew.x);

var menu = instance_create_layer(x+side*(sprite_width+8),y-sprite_height/2,"Instances_Menus",crewMenu_obj);
var tb = crew_textbox_create(crew, "Hello Captain!");
