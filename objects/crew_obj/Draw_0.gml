/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_font(crew_font);
draw_text_transformed(x,y,string_char_at(special, 0),4,4,0);
draw_text(x,y-32, name);
draw_set_halign(fa_left);