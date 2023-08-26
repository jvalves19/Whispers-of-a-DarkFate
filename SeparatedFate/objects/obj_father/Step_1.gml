/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_dialogo)) || instance_exists(obj_dialogue) state = "idle";

//Look to the right side
if(hSpd != 0){
	xscale = sign(hSpd);
}
image_xscale = xscale; 

image_speed = global.spd_mult;