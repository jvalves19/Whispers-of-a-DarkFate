if(instance_exists(obj_transition) || instance_exists(obj_dialogo)) || instance_exists(obj_dialogue) || obj_game_controller.game_over exit;
//Initializing variables
player_controls();

var doorSense = place_meeting(x, y, obj_sensor);
var npcSense = place_meeting(x, y, obj_npcFather);

var ground = place_meeting(x, y + 1, obj_block);
var fall = vSpd!=0;
//Gravity
if(left && right) state = "idle"
if(!ground && (vSpd < max_vSpd * 2 )){
	vSpd += GRAVITY * weight * global.spd_mult;
}

//Spell direction variables
//var flipped = direction;
//var spell_x = (x + 4) * (flipped);
//var y_offset = lengthdir_y(-20, image_angle);
var _xx = x + lengthdir_x(20 * image_xscale, image_angle);

#region CHANGE ITEM
if(down && global.currentItem == 0){
	if(global.controllItems[1]){
		global.currentItem = 1;
		exit;
	}
	else{
		global.currentItem = 0;
	}
}

if(down && global.currentItem == 1){
	if(global.controllItems[0]){
		global.currentItem = 0;	
		exit;
	}
	else{
		global.currentItem = 1;
	}
}

if(keyboard_check_released(ord("I")) || gamepad_button_check_released(0, gp_face4)){
	if(global.currentItem == 0 && global.lifePotionQtd>0){
		if(obj_player.life < global.pMaxLife){
			if(global.lifePotionQtd - 1 == 0){
				if(global.auraPotionQtd> 0){
					global.currentItem = 1;
				}
			}
			if((obj_player.life + 50) >= global.pMaxLife){
				obj_player.life = global.pMaxLife;
			}	
			else {
				obj_player.life = obj_player.life + 50;
			}
			global.lifePotionQtd -= 1
			state = "potion"
		}
	}
	if(global.currentItem == 1 && global.auraPotionQtd>0){
		if(obj_player.aura < global.pMaxAura){
			if(global.auraPotionQtd - 1 == 0){
				if(global.lifePotionQtd > 0){
					global.currentItem = 0;	
				}
			}
			if((obj_player.aura + 50) >= global.pMaxAura){
				obj_player.aura = global.pMaxAura;
			}	
			else {
				obj_player.aura = obj_player.aura + 50;
			}
			global.auraPotionQtd -= 1;
			state = "potion"
		}
	}
}

quantity = 0;
if(global.currentItem == 0){
	quantity = global.lifePotionQtd;
}
if(global.currentItem == 1){
	quantity = global.auraPotionQtd;
}
#endregion

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
	if(!canSpell && time_spell > 0){
		canSpell = false;
		time_spell --;
		//image_alpha = max(sin(get_timer()/100000), 0.5);
	} else {
		canSpell = true;
		//image_alpha = 1;
	}
}
#endregion

#region CHANGE POWER
if(canPower && changeUltimate && global.currentPower == 0){
	if(global.controllPowers[1]){
		global.currentPower = 1;
		exit;
	}
	if(global.controllSpells[2]){
		global.currentPower = 2;	
		exit;
	}
}
	
if(canPower && changeUltimate && global.currentPower == 1){
	if(global.controllPowers[2]){
		global.currentPower = 2;
		exit;
	}
	if(global.controllPowers[0]){
		global.currentPower = 0;	
		exit;
	}
}
	
if(canPower && changeUltimate && global.currentPower == 2){
	if(global.controllPowers[0]){
		global.currentPower = 0;
		exit;
	}
	if(global.controllPowers[1]){
		global.currentPower = 1;
		exit;
	}
}
	if(!canPower && time_power > 0){
		canPower = false;
		time_power --;
		//image_alpha = max(sin(get_timer()/100000), 0.5);
	} else {
		canPower = true;
		//image_alpha = 1;
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
	#region IDLE
	case "idle":
		hSpd = 0;
		sprite_index = spr_pIdle;
		
		if(right || left){
			state = "walk";
		}	
		else
			if((!doorSense && !npcSense) && (jump || fall)){
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
				hSpd = 0;
				image_index = 0;
			}
		else
			if(spell && canSpell){
				state = "spell";
				image_index = 0;
			}
		
		break;
	#endregion
	
	#region WALK
	case "walk":
		sprite_index = spr_pWalk;
		
		//Movement to the direction
		hSpd = (right - left) * max_hSpd;
		
		if(abs(hSpd) < 0.1){
			state = "idle";
			hSpd = 0;
		}
		else
			if((!doorSense && !npcSense) && (jump || fall)){
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
				hSpd = 0;
				image_index = 0;
			}
		else
			if(spell && canSpell){
				state = "spell";
				image_index = 0;
			}
		break;
	#endregion
	
	#region JUMP
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
	
	#region DASH
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
	
	#region POTION
	case "potion":
		if(global.currentItem == 0){
			if(sprite_index != spr_pPotion){
				sprite_index = spr_pPotion;
				image_index = 0;	
				hSpd = 0;
			}
		}
		if(global.currentItem == 1){
			if(sprite_index != spr_pPotionMana){
				sprite_index = spr_pPotionMana;
				image_index = 0;	
				hSpd = 0;
			}
		}
		
		if(image_index >= image_number-1){
			state = "idle";
		}
		break;
		
	
	#endregion
		
	#region ATTACK
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
	
	#region ULTIMATE
	case "ultimate":
		hSpd = 0;
		
		if(global.currentPower == 0){
			player_ultimate(spr_pUltimate, 20, sprite_width/5, -sprite_height/2, 2, 2);
		}
		if(global.currentPower == 1){
			player_ultimate(spr_pUltimate2, 30, random_range
				(camera_get_view_width(view_camera[0])-250, camera_get_view_width(view_camera[0])-550), 
				(camera_get_view_height(view_camera[0])-470), 2, 5);
		}
		canPower = false;
		time_power = powerTimer;
		break;
	#endregion
		
	#region SPELL
	case "spell":
		if(sprite_index != spr_pHit){
			sprite_index = spr_pHit;
			image_index = 0;	
			hSpd = 0;
		}
		if(image_index >= 1 && canAttack && aura > 5) setSpell(_xx, global.pDmgSpell, 20, obj_pSpells);
		if(image_index >= image_number-1){
			canAttack = true;
			state = "idle";
		}
		canSpell = false;
		time_spell= spellTimer;
		break;
	#endregion
	
	#region HEAL
	case "heal":		
		if(((aura - 5) >= 0) && life < global.pMaxLife){
			if(sprite_index != spr_pHeal){
				sprite_index = spr_pHeal;
				image_index = 0;
				aura -= 5;
				hSpd = 0;
				if((life + 10) >= global.pMaxLife) life = global.pMaxLife;
				else life += 10;
			}
		}
		
		if(image_index >= image_number-1){	
			state = "idle";
		}
		break;
		
	#endregion
	
	#region HIT
	case "hit":
		invincible = true;
		time_invincible = invincible_timer;
		get_hit(spr_pHit, 0);	
		break;
			
	#endregion
	#region DEATH
	case "dead":
		if(sprite_index != spr_dead){
			sprite_index = spr_dead;
			image_index = 0;
			hSpd = 0;
			vSpd = 0;
		}
			
		if(image_index > image_number-1){
			image_speed = 0;
		}

		if(instance_exists(obj_game_controller)){
			with(obj_game_controller){	
				game_over = true;
				//audio_stop_all();
				audio_play_sound(snd_gameOver, 1000, false);
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