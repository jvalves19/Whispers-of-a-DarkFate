//check if is changing room or in a dialogue
if(instance_exists(obj_transition) || instance_exists(obj_dialogo)) || instance_exists(obj_dialogue) exit;

//Initializing variables
player_controls();
var ground = place_meeting(x, y + 1, obj_block);
var fall = vSpd!=0;

//Spell direction variables
//var flipped = direction;
//var spell_x = (x + 4) * (flipped);
//var y_offset = lengthdir_y(-20, image_angle);
var _xx = x + lengthdir_x(0, image_angle);

//Gravity
if(!ground && (vSpd < max_vSpd * 2 )){
	vSpd += GRAVITY * weight * global.spd_mult;
}

#region CHANGE SPELL
if(changeSpell && global.currentSpell == 0){
	if(global.controllSpells[1]){
		global.currentSpell = 1;
		exit;
	}
	if(global.controllSpells[2]){
		global.currentSpell = 2;	
		exit;
	}
}
	
if(changeSpell && global.currentSpell == 1){
	if(global.controllSpells[2]){
		global.currentSpell = 2;
		exit;
	}
	if(global.controllSpells[0]){
		global.currentSpell = 0;	
		exit;
	}
}
	
if(changeSpell && global.currentSpell == 2){
	if(global.controllSpells[0]){
		global.currentSpell = 0;
		exit;
	}
	if(global.controllSpells[1]){
		global.currentSpell = 1;
		exit;
	}
}
if(global.currentSpell == 0 || global.currentSpell == 1 || global.currentSpell == 2){
	canSpell = true;
}
#endregion

#region CHANGE POWER
if(global.currentPower == 0 || global.currentPower == 1 || global.currentPower == 2){
	canPower = true;
}
#endregion	

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
			if(ultimate && canPower){
				state = "ultimate";
				image_index = 0;
			}
		else
			if(spell && canSpell){
				state = "spell";
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
			if(ultimate && canPower){
				state = "ultimate";
				image_index = 0;
			}
		else
			if(spell && canSpell){
				state = "spell";
				image_index = 0;
			}
		
	
		break;
	#endregion
	
	#region jump
	case "jump": 
		hSpd = (right - left) * max_hSpd;
		
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
		if(global.currentPower == 0){
			player_ultimate(spr_pUltimate, sprite_width/5, -sprite_height/2, 2, 2);
		}
	
		break;
	#endregion
		
	#region spell
	case "spell":
		if(sprite_index != spr_pHit){
			sprite_index = spr_pHit;
			image_index = 0;	
			hSpd = 0;
		}
	
		if(global.currentSpell == 0){
			if(image_index >= 1 && canAttack && aura > 5){
				setSpell(_xx, 01, obj_spell);
			}
		}
		if(global.currentSpell == 1){
			if(image_index >= 1 && canAttack && aura > 5){
				setSpell(_xx, 50, obj_fire);
			}
		}
		if(global.currentSpell == 2){
			if(image_index >= 1 && canAttack && aura > 5){
				setSpell(_xx, 50, obj_holy);
			}
		}
	
		if(image_index >= image_number-1){
			state = "idle";
			canAttack = true;
		}
		
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

#region DIALOGUE SYSTEM
if(distance_to_object(obj_npcFather) < 10){	
	if(action && !global.dialogo){		
		var _npc = instance_nearest(x, y, obj_npcFather);
		var _dialogue = instance_create_layer(x, y, "Dialogue", obj_dialogo)
		
		_dialogue.npc_nome = _npc.nome;
	}
}
#endregion