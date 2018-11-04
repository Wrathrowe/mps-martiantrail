/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_textbox) or !instance_exists(objective_obj)) exit;

#region Objective GUI
draw_set_color(c_black);
draw_set_font(fnt_dialogue);

//Fade objective GUI in/out
//t creates a delay before fading out
if keyboard_check(vk_tab) or t == 30 { 
	objAlpha += .1;
	t = 30;
} 

if t == 0 {
	objAlpha -= .03;
}

if objAlpha >= 1
	t--;

objAlpha = clamp(objAlpha, 0, 1);
t = clamp(t, 0, 60);

draw_set_alpha(objAlpha);

draw_rectangle(10,10,800,30+(string_height("W")*instance_number(objective_obj)),false);

for (var i = 0; i < instance_number(objective_obj); i += 1) {
	global.Objectives[i] = instance_find(objective_obj,i);
	draw_set_color(global.Objectives[i].color);
	draw_text(20, 20 + (string_height(global.Objectives[i].text)*i), global.Objectives[i].text);
	
}
#endregion

//Reset
draw_set_alpha(1);
draw_set_color(c_white);