/// @description Insert description here
// You can write your code in this editor
if global.DEBUG {draw_self();}

var oscil = sin(t)*3;
t += .05; if t >= 360 {t=0;}
draw_sprite_ext(spr,0,x,y+oscil,image_xscale, image_yscale, spr_rot, image_blend, image_alpha);

//Draw interact text
var _crew = instance_nearest(x,y,crew_obj);
if distance_to_object(_crew) < 120 and
state == "Moving" and
_crew.state != "Moving" and !instance_exists(crew_textbox_obj) {
	draw_set_color(c_black);
	draw_rectangle(x-60,y-sprite_get_height(spr)/2+8,x+60,y-sprite_get_height(spr)/2-40,false);
	draw_set_color(c_white);
	draw_rectangle(x-60,y-sprite_get_height(spr)/2+8,x+60,y-sprite_get_height(spr)/2-40,true);
	draw_set_halign(fa_center);
	draw_text(x,y-sprite_get_height(spr)/2-32,"<Z> to interact");
}