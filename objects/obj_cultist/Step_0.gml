/// @description Insert description here
// You can write your code in this editor

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
		if(dist < 300){
			state = "walk";
		}
		hSpd = lengthdir_x(1, dir);
		if(sign(hSpd) != 0) image_xscale = sign(hSpd);
		
		break;
	#endregion
	
	#region walk
	case "walk":
		if(sprite_index != sprWalk){
			sprite_index = sprWalk;
			image_index = 0;
		}
		
		if(dist > 50){
			hSpd = lengthdir_x(max_hSpd, dir);
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
					attacking(spr_graveAttack1, 3, 8, sprite_width/5, -sprite_height/5, 2, 1, "idle");
					break;
					
				case 1:
					attacking(spr_graveAttack2, 5, 8, sprite_width/5, -sprite_height/5, 1, 4, "idle");
					break;
					
				case 2:
					attacking(spr_graveAttack3, 3, 6, sprite_width/5, -sprite_height/5, 2, 1, "idle");
					break;
			}
		
		break;
	#endregion

	#region hit and death
	case "hit":
		get_hit(spr_graveHit, 0);
		
		hSpd = lengthdir_x(1, dir);
		if(sign(hSpd) != 0) image_xscale = sign(hSpd);
	
		break;
	
	//You re dead now
	case "dead":
		dying(spr_graveDead);
		audio_sound_gain(msc_bossBattle3, 0, 2000);
		global.spd_mult = 0.5;
				
		if(instance_exists(obj_game_controller) && image_alpha <= 0){
			with(obj_game_controller){	
				bossDead = true;	
				global.bardoDialogue = 2;
				global.destroyed[3] = true;
			}
		}		
		
		break;
	#endregion
	
	default:
		state = "idle";
}


with(obj_game_controller){
	if(game_over){
		audio_sound_gain(msc_bossBattle3, 0, 2000);
	}
}