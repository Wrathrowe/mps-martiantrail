/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;

if global.DEBUG {draw_self();}

var oscil = sin(t)*3;
t += .05; if t >= 360 {t=0;}

if instance_exists(obj_textbox) {
	spr_rot = 0;
}

//remove float
oscil = 0;

draw_sprite_ext(spr,0,x,y,image_xscale, image_yscale, spr_rot, image_blend, image_alpha);

image_angle = spr_rot;
