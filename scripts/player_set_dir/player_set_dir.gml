
var mSpeed = argument0;

var key_right = keyboard_check(vk_right);
var key_left = keyboard_check(vk_left);
var key_up = keyboard_check(vk_up);
var key_down = keyboard_check(vk_down);

hsp = (key_right - key_left) * mSpeed;
vsp = (key_down - key_up) * mSpeed;
