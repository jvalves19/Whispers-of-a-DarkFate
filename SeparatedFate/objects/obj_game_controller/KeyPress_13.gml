/// @description Insert description here
// You can write your code in this editor

if(game_over){
	if(room == rm_firstBoss){
		room_goto_next();
		
		obj_player.life = obj_player.max_life;
		obj_player.state = "idle";
		obj_player.x = 70;
		obj_player.y = 380;
		global.controllPowers[0] = true;
	
		instance_activate_object(obj_pause);
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