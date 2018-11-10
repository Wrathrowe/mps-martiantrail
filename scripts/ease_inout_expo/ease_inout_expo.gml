/// @description ease_inout_expo(time, start, change, duration)
/// @param time
/// @param  start
/// @param  change
/// @param  duration

/*
you need to set up a timer for the "time" variable

time        = the point in time along the graph e.g. at the start 0
start       = value of the starting point e.g. at the start 100
change      = the change between starting value and end value e.g. 50 so the end value would be 150
duration    = amount of "time" it should take to reach the end value e.g. 30 
*/

argument0 /= argument3 * 0.5;

if (argument0 < 1) 
{
    return argument2 * 0.5 * power(2, 10 * (argument0 - 1)) + argument1;
}

argument0 -= 1;
return argument2 * 0.5 * (-power(2, -10 * argument0) + 2) + argument1;