// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_enemy_attack(target, dist_player, xscale){
	
	//Check if player is on collision line
	var player = collision_line(x, y - sprite_height/4, x + ((dist_player/3)*xscale), y - sprite_height/4, target, 0, 1);

	if(player){
		state = "attack";
	}
}