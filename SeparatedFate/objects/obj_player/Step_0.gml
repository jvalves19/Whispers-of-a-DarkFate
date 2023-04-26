if(instance_exists(obj_transition) || instance_exists(obj_dialogo)) || instance_exists(obj_dialogue) exit;

//Initializing variables
player_controls();
var ground = place_meeting(x, y + 1, obj_block);
var fall = vSpd!=0;
//Gravity
if(left && right) state = "idle"
if(!ground && (vSpd < max_vSpd * 2 )){
	vSpd += GRAVITY * weight * global.spd_mult;
}


#region PICK ITEMS
x1 = x;
y1 = y;
x2 = x + sprite_width/sprite_width;
y2 = y - sprite_height;

if(collision_rectangle(x1, y1, x2, y2, obj_item, false, false)){
	itemInstanceID = collision_rectangle(x1, y1, x2, y2, obj_item, false, false);
	item = itemInstanceID.image_index;
	
	if(itemInstanceID.canBePicked) pickItems(item, itemInstanceID);
}
#endregion
#region INVENTORY
if(keyboard_check_pressed(ord("I")) || gamepad_button_check_pressed(0, gp_select)){
	showInventory = !showInventory;
}

if(showInventory){	
	//Change Items
	if(gamepad_button_check(0, gp_padu) || keyboard_check_pressed(vk_down)){
		if(selectedItem + 1) <= (maxInvSlots - 1) selectedItem++;
		else selectedItem = 0;
	}
	if(gamepad_button_check(0, gp_padd) || keyboard_check_pressed(vk_up)){
		if(selectedItem - 1) >= 0 selectedItem--;
		else selectedItem = (maxInvSlots - 1);
	}
	
	//Drop Items
	if(keyboard_check_pressed(vk_backspace) || gamepad_button_check_pressed(0, gp_face3)){
		item = a_inv[selectedItem];
		
		dropItems(item);
	}
	
	//Use Items
	if(keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(0, gp_face4)){
		
	}
}

#endregion

//Spell direction variables
//var flipped = direction;
//var spell_x = (x + 4) * (flipped);
//var y_offset = lengthdir_y(-20, image_angle);
var _xx = x + lengthdir_x(0, image_angle);

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
if(changeUltimate && global.currentPower == 0){
	if(global.controllPowers[1]){
		global.currentPower = 1;
		exit;
	}
	if(global.controllSpells[2]){
		global.currentPower = 2;	
		exit;
	}
}
	
if(changeUltimate && global.currentPower == 1){
	if(global.controllPowers[2]){
		global.currentPower = 2;
		exit;
	}
	if(global.controllPowers[0]){
		global.currentPower = 0;	
		exit;
	}
}
	
if(changeUltimate && global.currentPower == 2){
	if(global.controllPowers[0]){
		global.currentPower = 0;
		exit;
	}
	if(global.controllPowers[1]){
		global.currentPower = 1;
		exit;
	}
}
if(global.currentPower == 0 || global.currentPower == 1 || global.currentPower == 2){
	canPower = true;
}
#endregion	

#region PLAYER INVINCIBLE
if(invincible && time_invincible > 0){
	time_invincible --;
	image_alpha = max(sin(get_timer()/100000), 0.5);
} else {
	invincible = false;
	image_alpha = 1;
}
#endregion

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
		if(global.currentPower == 1){
			player_ultimate(spr_pUltimate2, random_range
				(camera_get_view_width(view_camera[0])-250, camera_get_view_width(view_camera[0])-550), 
				(camera_get_view_height(view_camera[0])-470), 2, 5);
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
	
		if(image_index >= 1 && canAttack && aura > 5){
			setSpell(_xx, global.pDmgSpell, 01, obj_pSpells);
		}
		
		if(image_index >= image_number-1){
			canAttack = true;
			state = "idle";
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
		invincible = true;
		time_invincible = invincible_timer;
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
	if(vSpd == 0 && hSpd == 0){
		if(action && !global.dialogo){		
			var _npc = instance_nearest(x, y, obj_npcFather);
			var _dialogue = instance_create_layer(x, y, "Dialogue", obj_dialogo)
		
			_dialogue.npc_nome = _npc.nome;
		}
	}
}
#endregion