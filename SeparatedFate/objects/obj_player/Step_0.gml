/// @description Insert description here
// You can write your code in this editor

//check if is changing room or in a dialogue
if(instance_exists(obj_transition) || instance_exists(obj_dialogo)) exit;

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
		sprite_index = spr_pIdle;
		
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
		sprite_index = spr_pWalk;
		
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
			sprite_index = spr_pJump;
			
			//Dont Repeat the Jump Animation 
			if(image_index >= image_number-1){
				image_index = image_number-1
			}
		}
		else {
			sprite_index = spr_pFall;
		}
		
		if(ground){
			state = "idle";
			hSpd = 0;
		}
		
		break;
	#endregion
	
	#region dash
	case "dash":
		if(sprite_index != spr_pDash){
			sprite_index = spr_pDash;
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
			player_attacking(spr_pAttack, 4, 6, sprite_width/5, -sprite_height/2, 2, 1);
		}
		else
			if(combo == 1){
				player_attacking(spr_pAttack2, 4, 6, sprite_width/5, -sprite_height/2, 2, 1);
			}
		else
			if(combo == 2){
				player_attacking(spr_pAttack3, 4, 6, sprite_width/5, -sprite_height/2, 2, 1);
			}
		break;
	#endregion
	
	#region ultimate
	case "ultimate":
		player_ultimate(spr_pUltimate, sprite_width/5, -sprite_height/2, 2, 2);
	
		break;
	#endregion
		
	#region heal
	case "heal":		
		if(aura > 0 && life < global.pMaxLife){
			if(sprite_index != spr_pHeal){
				sprite_index = spr_pHeal;
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
		get_hit(spr_pHit, 0);			
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

//Dialogue System
#region DIALOGUE
if(distance_to_object(obj_npcFather) < 10){	
	if(keyboard_check_pressed(ord("E")) && !global.dialogo){		
		var _npc = instance_nearest(x, y, obj_npcFather);
		var _dialogue = instance_create_layer(x, y, "Dialogue", obj_dialogo)
		
		_dialogue.npc_nome = _npc.nome;
	}
}

#endregion