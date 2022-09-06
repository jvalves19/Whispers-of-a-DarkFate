//player events
if(game_over){
	instance_deactivate_object(obj_pause);
	global.spd_mult = 0.5;
}

#region BOSS
//BOSS EVENTS
if(global.bossBattle){
	instance_deactivate_object(obj_sensor);
}
else{
	instance_activate_object(obj_sensor);
}


if(bossDead){
	global.spd_mult = 0.5;
}
#endregion


if(object_exists(obj_player) || object_exists(obj_owPlayer)){
	global.actRoom = room;
}

if(global.actRoom == rm_world){		
	with(global.actPlayer){
		instance_change(obj_owPlayer, true);
	}
	
	global.actPlayer = global.owPlayerID;
}

if(global.actRoom != rm_world){
	with(global.actPlayer){
		instance_change(obj_player, true);
	}
	
	global.actPlayer = global.playerID;
}
