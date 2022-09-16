/// @description Insert description here
// You can write your code in this editor

var ground = place_meeting(x, y + 1, obj_block);

if(!ground){
	vSpd += GRAVITY * weight * global.spd_mult;
}

switch(state){
	#region idle
	case "idle":
		if(sprite_index != spr_graveIdle){
			sprite_index = spr_graveIdle;
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
		if(sprite_index != spr_graveWalk){
			sprite_index = spr_graveWalk;
			image_index = 0;
		}
		
		if(instance_exists(obj_player)){
			var _dist = point_distance(x, y, obj_player.x, obj_player.y);
			var _dir = point_direction(x, y, obj_player.x, obj_player.y);
			
			if(_dist > 50){
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
	
		break;
	
	//You re dead now
	case "dead":
		dying(spr_graveDead);
		audio_sound_gain(msc_bossBattle3, 0, 2000);
		global.spd_mult = 0.5;
				
		if(instance_exists(obj_game_controller) && image_alpha <= 0){
			with(obj_game_controller){	
				bossDead = true;	
				global.stateDialogue = 2;
				global.destroyed[3] = true;
				//global.controllPowers[0] = true;
			}
		}		
		
		break;
	#endregion
	
	default:
		state = "idle";
}