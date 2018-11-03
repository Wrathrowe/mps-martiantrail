/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (type != "None" and size > 0) {

	myText[0] = "That's a "+ sizeText[size] + " pile of " + type + " Components.";
	myTextCol[0] = [10, sizeColor[size], 10+string_length(sizeText[size]), c_white];
	
	myText[1] = "It contains " + string(amount[size]) + " components and is worth " + string(amount[size]) + " credits.";
	myTextCol[1] = [13, sizeColor[size], 13+string_length(string(size))+12, c_white];
	
	myText[2] = "Would you like to buy it?";
	myText[3] = ["Yes","No"];
	myNextLine[3] = [4,-1];
	
	myText[4] = "You purchased the " + sizeText[size] + " pile of " + type + " Components."
	
	
	myTypes = [0,0,0,1];

}