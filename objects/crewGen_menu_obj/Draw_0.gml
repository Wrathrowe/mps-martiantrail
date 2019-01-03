/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//draw_sprite(mySprite,0,x,y);
draw_set_color(c_white);

var crew = CREW[crewMenu.itemindex];
draw_text(x-300,y-50, "Name: "+crew.name+
"\nSpecial: "+string(crew.special)+
"\nSubsystem Profeciencies:\n\n"+"   "+
"P: "+string(crew.pecProf[? "P"])+"   "+
"E: "+string(crew.pecProf[? "E"])+"   "+
"C: "+string(crew.pecProf[? "C"])
);
	
draw_text(x,y-50,"Points Remaining: "+string(points));
	
draw_text(x-300,y+80,"Press [Esc] to exit");


if (global.DEBUG) {
	draw_set_color(c_yellow);
	draw_circle(x,y,24,false);
	draw_set_color(c_white);
}
