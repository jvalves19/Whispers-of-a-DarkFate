/// @description Insert description here
// You can write your code in this editor

if(game_over){
	if(room == rm_firstBoss){
		instance_activate_object(obj_pause);
		room_goto(rm_cutsc01);
		
		obj_player.life = obj_player.max_life;
		obj_player.state = "idle";
		global.controllPowers[0] = true;
	}
	else{
		game_restart();
	}
}


if(bossDead){
	obj_player.life = obj_player.max_life
	saveGame();
}

global.spd_mult = 1;
game_over = false;
value = 0;
bossDead = false;