/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	var _direction =  point_direction(x, y, obj_player.x, obj_player.y);
}

var ground = place_meeting(x, y + 1, obj_block);

if(!ground){
	vSpd += GRAVITY * weight * global.spd_mult;
}

switch(state){
	#region idle
	case "idle":
		if(sprite_index != spr_samIdle){
			sprite_index = spr_samIdle;
			image_index = 0;
		}
		
		if(instance_exists(obj_player)){
			var _dist = point_distance(x, y, obj_player.x, obj_player.y);
			
			if(_dist < 300){
				state = "walk";
			}
		}
		
		break;
	#endregion
	
	#region walk
	case "walk":
		if(sprite_index != spr_samWalk){
			sprite_index = spr_samWalk;
			image_index = 0;
		}
		
		if(instance_exists(obj_player)){
			var _dist = point_distance(x, y, obj_player.x, obj_player.y);
			var _dir = point_direction(x, y, obj_player.x, obj_player.y);
			
			if(_dist > 40){
				hSpd = lengthdir_x(max_hSpd, _dir);
			}
			else{
				hSpd = 0;
				state = "attack";
				state_atk = irandom(2);
			}
		}
	
		
		break;
	#endregion
	
	#region attack
	case "attack": 
		//SubState Attack
			switch(state_atk){
				case 0:
					attacking(spr_samAttack1, 1, 5, sprite_width/10, -sprite_height/5, 2, 1, "idle");
					hSpd = lengthdir_x(1, _direction);
					if(sign(hSpd) != 0) image_xscale = sign(hSpd);
					break;
					
				case 1:
					attacking(spr_samAttack2, 2, 8, sprite_width/10, -sprite_height/5, 2, 4, "idle");
					break;
					
				case 2:
					attacking(spr_samAttack3, 7, 15, sprite_width/10, -sprite_height/5, 1, 4, "idle");
					break;
			}
		
		break;
	#endregion

	#region hit and death
	case "hit":
		get_hit(spr_samHit, 0);
		
		hSpd = lengthdir_x(1, _direction);
		if(sign(hSpd) != 0) image_xscale = sign(hSpd);
	
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
				global.stateDialogue = 2;
				global.destroyed[2] = true;
				global.currentPower = 0;
				global.currentSpell = 2;
			}
		}		
		
		break;
	#endregion
	
	default:
		state = "idle";
}