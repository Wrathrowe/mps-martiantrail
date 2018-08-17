/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(crew_font);

//Draw name
if textbox == noone {
	draw_set_halign(fa_center);
	draw_text(x+sprite_width/2,y-sprite_height/2, name);
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
draw_text_transformed(x+sprite_width/2,y+sprite_height/3,string_char_at(special, 0),2,2,0);
draw_set_halign(fa_left);