/// @description adds PECs components to inventory
/// @param P/E/C/M
/// @param int

switch (argument0) {
    case "P":
        global.Physical += argument1;
        break;
	case "E":
        global.Electrical += argument1;
        break;
	case "C":
        global.Computerized += argument1;
        break;
	case "M":
        global.Medical += argument1;
        break;
    default:
        // code here
        break;
}

show_debug_message("Physical: "+string(global.Physical));



