if(instance_exists(obj_transition) || instance_exists(obj_dialogo)) || instance_exists(obj_dialogue) || instance_exists(obj_cutscene) || obj_game_controller.game_over exit;
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
array_items = array_length(global.controllItems)
for(i=0; i<=array_items; i++){
	if(changeItem && global.currentItem == i){
		while(i < array_items-1){
			i++;
			if(global.controllItems[i]){
				global.currentItem = i;
				exit;
			}			
		}
		global.currentItem = 0;
		exit;
	}
}

if(useItem){
	//Poção Vida
	if(global.currentItem == 0 && global.lifePotionQtd>0){
		if(obj_player.life < global.pMaxLife){
			if((obj_player.life + 50) >= global.pMaxLife){
				obj_player.life = global.pMaxLife;
			}	
			else {
				obj_player.life = obj_player.life + 50;
			}
			global.lifePotionQtd -= 1
			state = "potion";
			exit;
		}
	}
	//Poção Mana
	if(global.currentItem == 1 && global.auraPotionQtd>0){
		if(obj_player.aura < global.pMaxAura){
			if(global.auraPotionQtd - 1 == 0) global.currentItem = 0;	
			
			if((obj_player.aura + 50) >= global.pMaxAura){
				obj_player.aura = global.pMaxAura;
			}	
			else {
				obj_player.aura = obj_player.aura + 50;
			}
			global.auraPotionQtd -= 1;
			state = "potion";
			exit;
		}
	}
	//Poção Dano
	if(global.currentItem == 2 && global.damagePotionQtd>0){
		if(global.damagePotionQtd - 1 == 0) global.currentItem = 0;	
		
		obj_player.atk = global.pAtk * 2;
		global.damagePotionQtd -= 1;
		state = "potion";
		exit;
		
	}
	//Poção Dano Mágico
	if(global.currentItem == 3 && global.spellPotionQtd>0){
		if(global.spellPotionQtd - 1 == 0) global.currentItem = 0;	
		
		obj_player.atk = global.pAtk * 2;
		global.spellPotionQtd -= 1;
		state = "potion";
		exit;
	}
}

if(global.currentItem == 0) quantity = global.lifePotionQtd;
if(global.currentItem == 1) quantity = global.auraPotionQtd;
if(global.currentItem == 2) quantity = global.damagePotionQtd;
if(global.currentItem == 3) quantity = global.spellPotionQtd;
#endregion

#region CHANGE SPELL
if(!canSpell && time_spell > 0){
	canSpell = false;
	time_spell --;
	//image_alpha = max(sin(get_timer()/100000), 0.5);
} else {
	canSpell = true;
	//image_alpha = 1;
}
if(aura - global.auraSpell <= 0){
	canSpell = false;
}	

array_spells = array_length(global.controllSpells);
for(i=0; i<=array_spells; i++){
	if(changeSpell && global.currentSpell == i){
		while(i < array_spells-1){
			i++;
			if(global.controllSpells[i]){
				global.currentSpell = i;
				exit;
			}
		}
		global.currentSpell = 0;
		exit;
	}
}
#endregion

#region CHANGE ULTIMATE
if(!canUltimate && time_ultimate > 0){
	canUltimate = false;
	time_ultimate --;
	//image_alpha = max(sin(get_timer()/100000), 0.5);
} else {
	canUltimate = true;
	//image_alpha = 1;
}
if(aura - global.auraUltimate <= 0){
	canUltimate = false;
}

array_ultimate = array_length(global.controllUltimate);
for(i=0; i<=array_ultimate; i++){
	if((changeUltimate && canUltimate) && global.currentUltimate == i){
		while(i < array_ultimate-1){
			i++;
			if(global.controllUltimate[i]){
				global.currentUltimate = i;
				exit;
			}
		}
		global.currentUltimate = 0;
		exit;
	}
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
		sprite_index = sprIdle;
		
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
			if(ultimate && canUltimate){
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
		sprite_index = sprWalk;
		
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
				hSpd = 0;
				image_index = 0;
			}
		else
			if(ultimate && canUltimate){
				state = "ultimate";
				hSpd = 0;
				image_index = 0;
			}
		else
			if(spell && canSpell){
				state = "spell";
				hSpd = 0;
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
		
		if(attack){
			state_attack(ground);
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
		
		if(image_index >= image_number-1 || !ground){
			state = "idle";
		}
		
		break;
	#endregion
	
	#region POTION
	case "potion":
		if(sprite_index != spr_pPotion){
			sprite_index = spr_pPotion;
			image_index = 0;	
			hSpd = 0;
			effects = noone;
		}	
		if(image_index > 0 && effects == noone && image_index < 7){
			effects = instance_create_layer(obj_player.x - 66, y - sprite_height*2, layer, obj_effects);
			effects.image_xscale = 4;
			effects.image_yscale = 4;
		}		
		if(image_index >= image_number-1){
			state = "idle";	
			instance_destroy(effects);
			effects = noone;
		}
		break;	
	#endregion
	
	#region AIR ATTACK DOWN
	case "air attack down":
		vSpd += .5;
		if(!attackDown){
			sprite_index = spr_pAttackAirDownBeg;
			image_index = 0;
			attackDown = true;
		}
		if(sprite_index == spr_pAttackAirDownBeg){
			if(image_index > .05){
				sprite_index = spr_pAttackAirDownLoop;
				image_index = 0;
			}
		}
		
		if(ground){
			if(sprite_index != spr_pAttackAirDownEnd){
				screenshake(10);
				sprite_index = spr_pAttackAirDownEnd;
				image_index = 0;
			}
			else {
				if(image_index >= image_number - 1){
					state = "idle";
					attackDown = false;	
					end_attack();
				}
			}
		}
		
		if(sprite_index == spr_pAttackAirDownBeg && damage == noone && canAttack){
			damage = instance_create_layer(x + sprite_width / 4, y - sprite_height / 2, layer, obj_pDamages);
			damage.image_xscale = 0.5;
			damage.image_yscale = 3;
			damage.damage = atk;
			damage.father = id;
			damage.destroy = false;
			canAttack = false;		
		}
		
		if(sprite_index == spr_pAttackAirDownEnd && damageArea == noone && canAttack){
			damageArea = instance_create_layer(x + sprite_width / 8, y - sprite_height / 8, layer, obj_pDamages);
			damageArea.image_xscale = 2;
			damageArea.image_yscale = 1;
			damageArea.damage = atk;
			damageArea.father = id;
		}
		
		break;
	
	#endregion
	
	#region AIR ATTACK
	case "air attack":
		if(sprite_index != spr_pAttackAir1){
			vSpd = -.5;
			sprite_index = spr_pAttackAir1;
			image_index = 0;
		}
		
		if(image_index >= 1 && damage == noone && canAttack){
			damage = instance_create_layer(x + sprite_width/4 + hSpd*4, y - sprite_height/2, layer, obj_pDamages);
			damage.image_xscale = 2;
			damage.image_yscale = 1;
			damage.damage = atk;
			damage.father = id;
			canAttack = false;
		}
		
		if(image_index >= image_number-1){
			state = "jump";
			end_attack();
		}
		if(ground){
			state = "idle";
			end_attack();
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
		if(global.currentUltimate == 0){
			player_ultimate(spr_pUltimate, global.auraUltimate, sprite_width/5, -sprite_height/2, 2, 2);
		}
		if(global.currentUltimate == 1){
			player_ultimate(spr_pUltimate2, global.auraUltimate, random_range
				(camera_get_view_width(view_camera[0])-250, camera_get_view_width(view_camera[0])-550), 
				(camera_get_view_height(view_camera[0])-470), 2, 5);
		}
		
		canUltimate = false;
		time_ultimate = ultimateTimer;
		break;
	#endregion
		
	#region SPELL
	case "spell":
		if(sprite_index != spr_pSpell) sprite_index = spr_pSpell; 
		if(canSpell && image_index > 0) setSpell(_xx, global.pDmgSpell, global.auraSpell, obj_pSpells);
		if(image_index >= image_number-1){
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
		if(instance_exists(obj_game_controller)){
			with(obj_game_controller){	
				game_over = true;
				audio_play_sound(snd_gameOver, 1, false);
			}
		}
		
		vSpd = 4;
		hSpd = 0;
		if(sprite_index != spr_dead){
			sprite_index = spr_dead;
			image_index = 0;
		}
		
		if(image_index > image_number-1){
			image_index = image_number-1;
			image_speed = 0;
			image_alpha -= 0.01;
		}		
		
		break;
	#endregion
		
	default: 
		state = "idle";			
}

#region DIALOGUE SYSTEM
if(distance_to_object(obj_npcFather) < 1){
	if(vSpd == 0 && hSpd == 0){
		if(action && !global.dialogo){		
			var _npc = instance_nearest(x, y, obj_npcFather);
			var _dialogue = instance_create_layer(x, y, "Dialogue", obj_dialogo)
		
			_dialogue.npc_nome = _npc.nome;
		}
	}
}
#endregion