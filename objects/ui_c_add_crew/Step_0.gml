/// @description Insert description here
// You can write your code in this editor
var pecLabels = ["P","E","C"];
if (crewSelected != crewGen_menu_obj.crewSelected) {
	crewSelected = crewGen_menu_obj.crewSelected;
	for (var i = 0; i<array_length_1d(pecLabels); i++) {
		uiButtonState = 0;
	}
}

for (var i = 0; i<array_length_1d(pecLabels); i++) {
	if (uiValue == crewSelected.pecProf[? pecLabels[i]] and uiButtonGroup == i+1) {
		uiButtonState = 1;
	}
	if (crewGen_menu_obj.points - ( uiValue + crewSelected.pecProf[? pecLabels[i]] ) < 0) {
		if (uiButtonState != 1 and uiButtonGroup == i+1 and uiValue != 0) {
			uiMouseHandle = false;
		} 
	} else {
		uiMouseHandle = true;
	}
}
