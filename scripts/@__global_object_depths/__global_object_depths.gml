// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -2; // obj_bannerglobal.__objectDepths[1] = -5; // obj_startglobal.__objectDepths[2] = -5; // obj_helpglobal.__objectDepths[3] = -5; // obj_quitglobal.__objectDepths[4] = 0; // obj_gridglobal.__objectDepths[5] = -1; // obj_linkedglobal.__objectDepths[6] = -2; // obj_movableglobal.__objectDepths[7] = 999; // obj_backdropglobal.__objectDepths[8] = -999; // obj_helpscreenglobal.__objectDepths[9] = -9999; // obj_scaler

global.__objectNames[0] = "obj_banner";global.__objectNames[1] = "obj_start";global.__objectNames[2] = "obj_help";global.__objectNames[3] = "obj_quit";global.__objectNames[4] = "obj_grid";global.__objectNames[5] = "obj_linked";global.__objectNames[6] = "obj_movable";global.__objectNames[7] = "obj_backdrop";global.__objectNames[8] = "obj_helpscreen";global.__objectNames[9] = "obj_scaler";

global.__objectDepths[10] = 0; // p_menu
global.__objectDepths[11] = 0; // o_menu
global.__objectDepths[12] = 0; // o_mainmenu
global.__objectDepths[13] = 0; // o_newgame
global.__objectDepths[14] = 0; // o_loadgame
global.__objectDepths[15] = 0; // o_settings


global.__objectNames[10] = "p_menu";
global.__objectNames[11] = "o_menu";
global.__objectNames[12] = "o_mainmenu";
global.__objectNames[13] = "o_newgame";
global.__objectNames[14] = "o_loadgame";
global.__objectNames[15] = "o_settings";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for