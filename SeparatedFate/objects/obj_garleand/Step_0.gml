/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	var _dist = point_distance(x, y, obj_player.x, obj_player.y);
	var _dir = point_direction(x, y, obj_player.x, obj_player.y);
}

var ground = place_meeting(x, y + 1, obj_block);

if(!ground){
	vSpd += GRAVITY * weight * global.spd_mult;
}

switch(state){
	#region idle
	case "idle":
		if(sprite_index != sprIdle){
			sprite_index = sprIdle;
			image_index = 0;
		}
		if(_dist < 300){
			state = "walk";
		}
		hSpd = lengthdir_x(1, _dir);
		if(sign(hSpd) != 0) image_xscale = sign(hSpd);
		
		break;
	#endregion
	
	#region walk
	case "walk":
		if(sprite_index != sprWalk){
			sprite_index = sprWalk;
			image_index = 0;
		}
		if(_dist > 50){
			hSpd = lengthdir_x(max_hSpd, _dir);
			if(sign(hSpd) != 0) image_xscale = sign(hSpd);
		}
		else{
			hSpd = 0;
			state = "attack";
			state_atk = irandom(2);
		}	
		
		break;
	#endregion
	
	#region attack
	case "attack": 
		//SubState Attack
			switch(state_atk){
				case 0:
					attacking(spr_garlAttack1, 3, 8, sprite_width/10, -sprite_height/5, 5, 2, "idle");
					hSpd = lengthdir_x(1, _dir);
					if(sign(hSpd) != 0) image_xscale = sign(hSpd);
					
					
					break;
					
				case 1:
					attacking(spr_garlAttack2, 5, 8, sprite_width/6, -sprite_height/5, 3, 4, "idle");
					hSpd = lengthdir_x(1, _dir);
					if(sign(hSpd) != 0) image_xscale = sign(hSpd);
					
					break;
					
				case 2:
					attacking(spr_garlAttack3, 3, 6, sprite_width/6, -sprite_height/5, 2, 3, "idle");
					hSpd = lengthdir_x(1, _dir);
					if(sign(hSpd) != 0) image_xscale = sign(hSpd);
					
					break;
			}
		
		break;
	#endregion

	#region hit and death
	case "hit":
		get_hit(spr_garlHit, 0);
		hSpd = lengthdir_x(1, _dir);
		if(sign(hSpd) != 0) image_xscale = sign(hSpd);		
	
		break;
	
	//You re dead now
	case "dead":
		dying(spr_garlDead);
		audio_sound_gain(msc_bossBattle, 0, 2000);
		global.spd_mult = 0.5;
		
		if(instance_exists(obj_game_controller) && image_alpha <= 0){
			with(obj_game_controller){	
				bossDead = true;
				global.destroyed[1] = true;
			}
		}	
		
		break;
	#endregion
	
	default:
		state = "idle";
}

with(obj_game_controller){
	if(game_over){
		audio_sound_gain(msc_bossBattle, 0, 2000);
		//audio_play_sound(msc_bossBattle, 1000, false);
	}
}