/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_font(crew_font);
draw_text_transformed(x+sprite_width/2,y+sprite_height/3,string_char_at(special, 0),2,2,0);
draw_text(x+sprite_width/2,y-sprite_height/2, name);
draw_set_halign(fa_left);