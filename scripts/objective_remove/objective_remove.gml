
/// @param object  Object that objective is pointing to

if !instance_exists(objective_obj) return;

for (var i = 0; i < instance_number(objective_obj); i += 1) {
	var o = instance_find(objective_obj,i);
	if o.objective == argument0 {
		instance_destroy(o);
		audio_play_sound(snd_moveselect,1,false);
	}
}
