
/// @param object  Object that objective is pointing to

if !instance_exists(objective_obj) return;

with (objective_obj) {
	if objective == argument0
		instance_destroy();
}