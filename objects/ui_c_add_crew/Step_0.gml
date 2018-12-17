/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

var pecLabels = ["P","E","C"];
if (crewSelected != crewGen_menu_obj.crewSelected) {
	crewSelected = crewGen_menu_obj.crewSelected;
	for (var i = 0; i<array_length_1d(pecLabels); i++) {
		uiButtonState = 0;
	}
}


for (var i = 0; i<array_length_1d(pecLabels); i++) {
	
	if uiButtonGroup == i+1 { 
		if uiValue == crewSelected.pecProf[? pecLabels[i]] {
			uiButtonState = 1;
		} else {
			uiButtonState = 0;
		}
	}
	
	if (crewGen_menu_obj.points - ( uiValue + crewSelected.pecProf[? pecLabels[i]] ) < 0) {
		if (uiButtonState != 1 and uiButtonGroup == i+1 and uiValue != 0) {
			//uiMouseHandle = false;
		} 
	} else {
		//uiMouseHandle = true;
	}
}
