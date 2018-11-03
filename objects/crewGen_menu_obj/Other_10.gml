/// @description Insert description here
// You can write your code in this editor

var crew = CREW[crewMenu.itemindex];
var pecLabels = ["P","E","C"];

for (var i=0; i<array_length_1d(pecLabels); i++) {
	if other.uiControlName==pecLabels[i] {
		if ((points + crew.pecProf[? pecLabels[i]]) - other.uiValue < 0) {
			other.uiButtonState = 0;
			exit;
		} else {
			crew.pecProf[? pecLabels[i]] = int64(other.uiValue);
		}
	}
}