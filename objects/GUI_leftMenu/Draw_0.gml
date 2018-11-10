/// @description Insert description here
// You can write your code in this editor
event_inherited();

var cam = view_get_camera(0);
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

draw_sprite(panelTab,0,x+100,y+yy/16);
draw_set_color(c_white);
draw_text_transformed(x+100+12,y+yy/16+12,"M\nE\nN\nU",1,1,0);
y = cam_y;

#region Leftbox Easing
if (lb_easing[? "time"] < lb_easing[? "duration"]) {
	x = cam_x+40+ease_out_back(lb_easing[? "time"],lb_easing[? "start"],lb_easing[? "dest"]-lb_easing[? "start"],lb_easing[? "duration"]);
	lb_easing[? "time"]++;
}
#endregion

#region Show/Hide Menu

if !menuOpen and (menuLock or point_in_rectangle(mouse_x,mouse_y, 
cam_x+4,cam_y+yy/16,
cam_x+32,cam_y+yy/16+200) 
and mouse_check_button_pressed(mb_left)) {
	
	show_debug_message("OPENING MENU TAB");
	
	menuOpen = true;
	lb_easing[? "start"] = -140;
	lb_easing[? "dest"] = -40;
	lb_easing[? "duration"] = 30;
	lb_easing[? "time"] = 0;
	
}

else if menuOpen and !menuLock and point_in_rectangle(mouse_x,mouse_y, cam_x,cam_y,cam_x+200,cam_y+200) and mouse_check_button_pressed(mb_left) {
	
	show_debug_message("CLOSING MENU TAB");
	
	menuOpen = false;
	lb_easing[? "start"] = -40;
	lb_easing[? "dest"] = -140;
	lb_easing[? "duration"] = 30;
	lb_easing[? "time"] = 0;	
	
}

#endregion

