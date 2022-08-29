/// @description Insert description here
// You can write your code in this editor

//check if is changing room
if(instance_exists(obj_transition)) exit;

//Initializing variables
player_controls();
var ground = place_meeting(x, y + 1, obj_block);
var fall = vSpd!=0;

//Gravity
if(!ground && (vSpd < max_vSpd * 2 )){
	vSpd += GRAVITY * weight * global.spd_mult;
}

//State Machine
switch(state){
	#region idle
	case "idle":
		hSpd = 0;
		sprite_index = spr_idle;
		
		if(right || left){
			state = "walk";
		}	
		else
			if(jump || fall){
				state = "jump";	
				vSpd = (-max_vSpd * jump);
				image_index = 0;
			}
		else
			if(attack){
				state_attack(ground);
			}
		else
			if(dash){
				state = "dash";
				image_index = 0;
			}
		else
			if(heal){
				state = "heal";
				image_index = 0;
			}
		else
			if(ultimate && global.controllPowers[0]){
				state = "ultimate";
				image_index = 0;
			}
		
		break;
	#endregion
	
	#region walk
	case "walk":
		sprite_index = spr_walk;
		
		//Movement to the direction
		hSpd = (right - left) * max_hSpd;
		
		if(abs(hSpd) < 0.1){
			state = "idle";
			hSpd = 0;
		}
		else
			if(jump || fall){
				state = "jump";	
				vSpd = (-max_vSpd * jump);
				image_index = 0;
			}
		else
			if(attack){
				state_attack(ground);
			}
		else
			if(dash){
				state = "dash";
				image_index = 0;
			}
		else
			if(heal){
				state = "heal";
				image_index = 0;
			}
		else
			if(ultimate && global.controllPowers[0]){
				state = "ultimate";
				image_index = 0;
			}
		
	
		break;
	#endregion
	
	#region jump
	case "jump": 
		if(vSpd < 0){
			sprite_index = spr_jump;
			
			//Dont Repeat the Jump Animation 
			if(image_index >= image_number-1){
				image_index = image_number-1
			}
		}
		else {
			sprite_index = spr_fall;
		}
		
		if(ground){
			state = "idle";
			hSpd = 0;
		}
		
		break;
	#endregion
	
	#region dash
	case "dash":
		if(sprite_index != spr_dash){
			sprite_index = spr_dash;
			image_index = 0;	
			hSpd = image_xscale * dash_Spd;
		}		
		
		if(image_index >= image_number-1){
			state = "idle";
		}
		
		break;
	#endregion
		
	#region attack
	case "attack":
		hSpd = 0;

		if(combo == 0){
			player_attacking(spr_attack, 3, 8, sprite_width/6, -sprite_height/5, 2, 1);
		}
		else
			if(combo == 1){
				player_attacking(spr_attack2, 3, 8, sprite_width/6, -sprite_height/5, 2, 1);
			}
		else
			if(combo == 2){
				player_attacking(spr_attack3, 9, 14, sprite_width/4, -sprite_height/5, 3, 3);
			}
			
		if(soundAttack == false && image_index < 1){
			audio_play_sound(snd_sword, 1, false);
			soundAttack = true;
		}
		soundAttack = false;
		
		break;
	#endregion
	
	#region ultimate
	case "ultimate":
		player_ultimate(spr_ultimate, sprite_width/5, -sprite_height/4, 2, 3);
	
		break;
	#endregion
		
	#region heal
	case "heal":		
		if(aura > 0 && life < max_life){
			if(sprite_index != spr_heal){
				sprite_index = spr_heal;
				image_index = 0;					
			}
			hSpd = 0;
			aura -= 5;
			life += 10;
			
		}
		
		if(image_index >= image_number-1){
			state = "idle";
		}
		break;
		
	#endregion
	
	#region hit and death
	case "hit":
		get_hit(spr_hit, 0);
		
		if(soundAttack == false && image_index < 1){
			audio_play_sound(snd_hit, 1, false);
			soundAttack = true;
		}
		soundAttack = false;
			
		break;
			
	case "dead":
		if(sprite_index != spr_dead){
			sprite_index = spr_dead;
			image_index = 0;
			hSpd = 0;
		}
			
		if(image_index > image_number-1){
			image_speed = 0;
		}

		if(instance_exists(obj_game_controller)){
			with(obj_game_controller){	
				game_over = true;
			}
		}	
		
		break;
	#endregion
		
		default: 
			state = "idle";
			
}
