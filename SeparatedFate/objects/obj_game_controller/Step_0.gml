/// @description Insert description here
// You can write your code in this editor

//player events
if(game_over){
	instance_deactivate_object(obj_pause);
	global.spd_mult = 0.5;
}

if(object_exists(obj_player)){
	global.actRoom = room;
	
}

if(global.bossBattle){
	instance_deactivate_object(obj_sensor);
}
else{
	instance_activate_object(obj_sensor);
}

//BOSS EVENTS
if(bossDead){
	global.spd_mult = 0.5;
	global.bossBattle = false;
}