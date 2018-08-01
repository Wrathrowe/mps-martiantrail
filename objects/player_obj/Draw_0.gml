/// @description Insert description here
// You can write your code in this editor
draw_self();

//Draw interact text
if distance_to_object(crew_obj) < 120 and state == "Moving" {
	draw_set_halign(fa_center);
	draw_text(x+sprite_width/2,y-sprite_height/2,"<Z> to interact");
}