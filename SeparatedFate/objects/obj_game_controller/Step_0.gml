/// @description Insert description here
// You can write your code in this editor

if(game_over){
	instance_deactivate_object(obj_pause);
	global.spd_mult = 0.5;
}

if(object_exists(obj_player)){
	global.actRoom = room;
	
}


if(bossDead){
	global.spd_mult = 0.5;
}