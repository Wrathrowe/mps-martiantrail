/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(crew_font);

if global.DEBUG {
	draw_set_color(c_red);
	draw_rectangle(bbox_left+hspeed,bbox_top,bbox_right+hspeed,bbox_bottom, true);
	draw_set_color(c_white);
}



//draw_sprite_ext(spr,0,x,y+oscil,image_xscale, image_yscale, image_angle, image_blend, image_alpha);


//Draw name
var nameWidth = string_width(name);
if textbox == noone {
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	draw_rectangle(x-nameWidth/2-4,y-10,x+nameWidth/2+4,y-40,false);
	draw_set_color(c_white);
	draw_rectangle(x-nameWidth/2-4,y-10,x+nameWidth/2+4,y-40,true);
	draw_set_halign(fa_center);
	draw_text(x,y-25, name);
} else {
	draw_set_color(c_black);
	draw_rectangle(textbox.x,textbox.y,textbox.x+80,textbox.y-32,false);
	draw_set_color(c_white);
	draw_rectangle(textbox.x,textbox.y,textbox.x+80,textbox.y-32,true);
	draw_set_halign(fa_left);
	draw_text(textbox.x+6,textbox.y-20,name);	
}
draw_set_halign(fa_left);

//Draw specialty
draw_set_halign(fa_center);
draw_set_color(c_red);
draw_text_transformed(x,y+sprite_height/3,string_char_at(special, 0),2,2,0);
draw_set_color(c_white);
draw_set_halign(fa_left);