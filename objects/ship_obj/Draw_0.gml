/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < array_length_1d(MECS); i++) {
	if (global.DEBUG) {
		var str = mecs_get_info(MECS[i]);
		draw_text(32+200*i,32,str);
	}
	
	var xx = sysPositions[i];
	xx = xx[0];
	var yy = sysPositions[i];
	yy = yy[1];
	
	var sys = MECS[i];
	var subs = sys[? "subs"];
	var ids = ["P","E","C"];
	for (var z=0; z<3; z++) {
		var sub = subs[? ids[z]];
		var text = sub[? "name"];
		show_debug_message(text);
		draw_text(xx+(z+1)*100, yy, text);
	}
	
	
	for (var j = i; j < array_length_1d(CREW)+i; j++) {
		if (global.DEBUG) {
			var ind = j-i;
			var crew = CREW[ind];
			draw_text(32+200*j,32,crew.name);
			draw_text(32+200*j,64,crew.sys[? "name"]);
		}
	}
}
	

	



