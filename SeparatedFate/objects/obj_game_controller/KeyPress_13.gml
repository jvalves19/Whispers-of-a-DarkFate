/// @description Insert description here
// You can write your code in this editor

if(game_over){
	if(room != rm_firstBoss){
		game_restart();
	}
	else{
		room_goto_next();
		obj_player.life = obj_player.max_life;
		obj_player.state = "idle";
		obj_player.x = 70;
		obj_player.y = 380;
	
		instance_activate_object(obj_pause);
	}
}
game_over = false;
value = 0;


if(bossDead){
	
	saveGame();
	room_restart();
}
bossDead = false;