if(game_over){
	instance_deactivate_object(obj_pause);
	global.spd_mult = 0.5;
}

#region DIALOGUE SYSTEM
if(instance_exists(obj_dialogo)){
	global.dialogo = true;
}

if(global.dialogo){
	instance_deactivate_object(obj_pause);
}
#endregion

if(object_exists(obj_player)){
	global.key[0] = global.key[0];
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
	instance_deactivate_object(obj_pause)
	global.spd_mult = 0.5;
}
#endregion

#region PLAYER
//PLAYER EVENTS
if(object_exists(obj_player) || object_exists(obj_owPlayer)){
	global.actRoom = room;
}

if(global.actRoom == rm_world){		
	with(global.actPlayer){
		instance_change(obj_owPlayer, true);
	}
	
	global.actPlayer = global.owPlayerID;
	

	audio_play_sound(msc_world, 500, true);
	audio_sound_gain(msc_world, 0.045, 0);
}

if(global.actRoom != rm_world){	
	audio_stop_sound(msc_world);

	
	with(global.actPlayer){
		instance_change(obj_player, true);
	}
	
	global.actPlayer = global.playerID;
}
#endregion