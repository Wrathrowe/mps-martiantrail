/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

// Inherit the parent event
event_inherited();

switch (string_char_at(special, 0)) {
    case "M":
        myColorNumber = 4;
        break;
	case "E":
        myColorNumber = 2;
        break;
	case "C":
        myColorNumber = 3;
        break;
	case "S":
        myColorNumber = 1;
        break;
    default:
        myColorNumber = 0;
        break;
}