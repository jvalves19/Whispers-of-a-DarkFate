/// @description Insert description here
// You can write your code in this editor


if(game_over){
	if(room != rm_castle){
		game_restart();
	}
	else{
		room_goto_next();
		obj_player.life = 100;
		obj_player.state = "idle";
	}
}

game_over = false;
value = 0;