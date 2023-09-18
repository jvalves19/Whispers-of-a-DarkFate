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
		if(global.bossBattle){
			if(dist < 300){
				state = "walk";
				
				if(battleFase == 2){
					if(random(10) >= 8) state = "ultimate";
				}
			}
			hSpd = lengthdir_x(1, dir);
			if(sign(hSpd) != 0) image_xscale = sign(hSpd);
		}
		
		break;
	#endregion
	
	#region walk
	case "walk":
		if(sprite_index != sprWalk){
			sprite_index = sprWalk;
			image_index = 0;
		}	
		if(dist > 40){
			hSpd = lengthdir_x(max_hSpd, dir);
		}
		else{
			hSpd = 0;
			state = "attack";
			state_atk = irandom(2);
			if(battleFase == 2){
				if(random(10) >= 7){
					state = "dash";
				}
			}
		}
		
		break;
	#endregion
	
	#region DASH
	case "dash":
		if(sprite_index != spr_samDash){
			invincible = true;
			sprite_index = spr_samDash;
			image_index = 0;	
			hSpd = image_xscale * dash_Spd;
		}		
		
		if(image_index >= image_number-1){
			state = "idle";
			invincible = false;
		}
		
		break;
	#endregion
	
	#region attack
	case "attack": 
		//SubState Attack
			switch(state_atk){
				case 0:
					attacking(spr_samAttack1, 1, 5, sprite_width/9, -sprite_height/5, 2, 1, "idle");
					break;
					
				case 1:
					attacking(spr_samAttack2, 2, 8, sprite_width/9, -sprite_height/5, 2, 4, "idle");
					break;
					
				case 2:
					attacking(spr_samAttack3, 7, 15, sprite_width/5, -sprite_height/5, 1, 4, "idle");
					break;
			}
		
		break;
	#endregion

	#region ULTIMATE
	case "ultimate":
		enemyUltimate(spr_samUltimate, sprite_width/18, -sprite_height/4, 1, 4);
		
		break;
	#endregion

	#region hit and death
	case "hit":
		get_hit(spr_samHit, 0);
		
		if(life < max_life * (70/100) ){
			battleFase = 2;
		}
		
		if(life > 0 && battleFase == 2){
			if(random(10) >= 5){
				state = "dash";
			}
		}
		
		/*
		hSpd = lengthdir_x(1, _dir);
		if(sign(hSpd) != 0) image_xscale = sign(hSpd);
		*/
		
		break;
	
	//You re dead now
	case "dead":
		dying(spr_samDead);
		audio_sound_gain(msc_bossBattle2, 0, 2000);
		global.spd_mult = 0.5;
				
		if(instance_exists(obj_game_controller) && image_alpha <= 0){
			with(obj_game_controller){
				instance_deactivate_object(obj_sensor);
				bossDead = true;	
				global.bardoDialogue = 2;
				global.destroyed[2] = true;
				global.currentSpell = 1;
				global.playerXP = global.playerXP + 3000;
			}
		}		
		
		break;
	#endregion
	
	default:
		state = "idle";
}

with(obj_game_controller){
	if(game_over){
		audio_sound_gain(msc_bossBattle2, 0, 2000);
	}
}