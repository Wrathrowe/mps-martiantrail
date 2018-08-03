/// @description Insert description here
// You can write your code in this editor

if (global.DEBUG) {
	for (var i = 0; i < array_length_1d(MECS); i++) {
		var str = mecs_get_info(MECS[i]);
		draw_text(32+200*i,32,str);
	}

	for (var j = i; j < array_length_1d(CREW)+i; j++) {
		var ind = j-i;
		var crew = CREW[ind];
		draw_text(32+200*j,32,crew.name);
		draw_text(32+200*j,64,crew.sys[? "name"]);
	}
}

