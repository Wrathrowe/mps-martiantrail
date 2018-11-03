/// @description Insert description here
// You can write your code in this editor

event_inherited();

//mySpeaker[0] = self;
myText[0] = "Welcome to my fine establishment!";

//mySpeaker[1] = player_obj;
myText[1] = ["View Stock", "Learn about components", "Leave"];
myNextLine[1] = [2, 3, -1];

//mySpeaker[2] = self;
myText[2] = "You will find an assortment of items in this room. Interact with any of them and I will tell you the type, size, and cost.";
myNextLine[2] = -1;

//mySpeaker[3] = self;
myText[3] = "Of course! Which kind would you like to learn more about?";

//mySpeaker[4] = player_obj;
myText[4] = ["Physical","Electrical","Computerized","General","Nevermind"];
myNextLine[4] = [5,6,7,8,1];

//mySpeaker[5] = self;
myText[5] = "Physical Components are used to repair the hulls, doors, and other physical aspects of your ship.";
myNextLine[5] = 4;

//mySpeaker[6] = self;
myText[6] = "Electrical Components are used to repair the wiring, cables, and other electrical aspects of your ship.";
myNextLine[6] = 4;

//mySpeaker[7] = self;
myText[7] = "Computerized Components are used to repair the hardware, software, and other computerized aspects of your ship.";
myNextLine[7] = 4;

//mySpeaker[8] = self;
myText[8] = "Physical, Electrical, and Computerized Components are what you use to repair the corresponding subsystem of your ship.";
myText[9] = "They're generally referred to as PEC Components.";

myNextLine[9] = 4;

myText[10] = "";


myTypes = [0,1,0,0,1,0,0,0,0,0,0,0];