/// @description Insert description here
// You can write your code in this editor

if(game_over){
	if(room == rm_firstBoss){
		instance_activate_object(obj_pause);
		room_goto(rm_cutsc01);
		
		obj_player.life = global.pMaxLife;
		obj_player.aura = global.pMaxAura;
		obj_player.state = "idle";
	}
	else{
		game_restart();
	}
}

if(bossDead){	
	global.pMaxLife += 400;
	global.pMaxAura += 250;
	global.pAtk += 20;
	
	obj_player.life = global.pMaxLife;
	obj_player.aura = global.pMaxAura;
}

global.bossBattle = false;
global.spd_mult = 1;
game_over = false;
value = 0;
bossDead = false;