/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_font(Arial);

for (var z=0; z<3; z++) {
	var subs = [p,e,c]; 
	var sub = subs[z];
	draw_text(x+(z)*100, y, sub.name);
	draw_text(x+(z)*100, y+32, sub.hp);
}

draw_set_color(c_white);
draw_set_halign(fa_left);