
/// @param object  Object to point to
/// @param text    String of objective text
/// @param color   GM Color of arrow (default c_white)
/// @param bool    Objective Condition

if (!instance_exists(player_obj)) return;

var obj = instance_create_layer(player_obj.x,player_obj.y,"Instances_GUI", objective_obj);

obj.objective = argument0;
obj.text = argument1;
obj.color = argument2;

return obj;

