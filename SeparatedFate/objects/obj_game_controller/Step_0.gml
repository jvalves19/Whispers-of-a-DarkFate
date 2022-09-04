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
}



global.actPlayer = global.playerID;

if(global.actRoom == rm_world){
	global.actPlayer = global.owPlayerID;
	
	/*with(global.playerID){
		instance_change(global.actPlayer, true);
	}
	*/
} 

/*
if(global.actRoom != rm_world){
	global.actPlayer = global.playerID;
	with(global.owPlayerID){
		instance_change(global.actPlayer, true);
	}
	
}
*/
