/// @description Insert description here
// You can write your code in this editor

if !instance_exists(player_obj) exit;

var cam = view_get_camera(0);
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);
xx = window_get_width();
yy = window_get_height();

PAUSED = instance_exists(obj_textbox);

//Ship Controller
if room == ship_room {
	if !PAUSED {
	
		//Get Random Event
		if global.Time / EVENT_TRIGGER == 1 {
			
			EVENT_TRIGGER += irandom_range(60*60*.5, 60*60*1);
			show_debug_message("EVENT_TRIGGER: "+string(EVENT_TRIGGER));
			show_debug_message("global.Time: "+string(global.Time));
			
			uiControlName = "x_test_event";
			with GUI_leftMenu {
				event_perform(ev_other,ev_user0);
			}
			
		}
		
		//Move time forward
		global.Time += 1;
	}
}