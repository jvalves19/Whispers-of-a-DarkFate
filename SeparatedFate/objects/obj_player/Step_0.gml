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
				state = "attack";
				hSpd = 0;
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
			if(ultimate){
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
				state = "attack";
				hSpd = 0;
				image_index = 0;
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
			if(ultimate){
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
			image_index = 0;	
		}
		sprite_index = spr_dash;
		
		hSpd = image_xscale * dash_Spd;
		
		if(image_index >= image_number-1){
			state = "idle";
		}
		
		break;
	#endregion
		
	#region attack
	case "attack":
		hSpd = 0;
		
		if(combo == 0){
			sprite_index = spr_attack;
		}
		else
			if(combo == 1){
				sprite_index = spr_attack2;
			}
		else
			if(combo == 2){
				sprite_index = spr_attack3;
			}
			
		//Creatint attack object
		if(image_index >= 3  && damage == noone && canAttack && sprite_index != spr_attack3){
			damage = instance_create_layer(x + sprite_width/6 , y-25 , layer, obj_damage);
			player_combo_attack();
		}
		if(image_index >= 8 && damage == noone && canAttack && sprite_index == spr_attack3){
			damage = instance_create_layer(x + sprite_width/4 , y-25 , layer, obj_damageWater);
			player_combo_attack();
		}
		
		if(attack && combo < 2 && image_index >= image_number-3){
			combo++;
			image_index = 0;
			canAttack = true;
			atkMult += 0.5;
			
			if(damage){
				instance_destroy(damage, false);
				damage = noone;
			}
		}
		
		if(image_index > image_number-1){
			state = "idle";
			hSpd = 0;
			combo = 0;
			canAttack = true;
			atkMult = 1;
			
			if(damage){
				instance_destroy(damage, false);
				damage = noone;
			}
		}
	
		break;
	#endregion
	
	#region ultimate
	case "ultimate":
		if(aura > 0){	
			
			if(sprite_index != spr_ultimate){
				image_index = 0;	
				aura = aura - 10;
			}
			hSpd = 0;
			
			sprite_index = spr_ultimate;
			
		
			for(i = 0; i < image_number-1; i++){
				damage = instance_create_layer(x + sprite_width/5 , y-30 , layer, obj_damageUltimate);
				damage.damage = atk/200;
				damage.father = id;
				canAttack = false;
			}		
		}
		
		
		if(image_index > image_number-1){
			state = "idle";
			canAttack = true;
			if(damage){
				instance_destroy(damage, false);
				damage = noone;
			}
		}
	
		break;
	#endregion
		
	#region heal
	case "heal":		
		if(aura > 0 && life < max_life){
			if(sprite_index != spr_heal){
				image_index = 0;	
				sprite_index = spr_heal;
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
		if(sprite_index != spr_hit){
			image_index = 0;
		}
		sprite_index = spr_hit;
		hSpd = 0;
			
		if(life > 0){
			if(image_index > image_number-1){
				state = "idle";
			}
		}
		else
			if(image_index >= 0){
				state = "dead";
			}
	
			
		break;
			
	case "dead":
		if(sprite_index != spr_dead){
			image_index = 0;
		}
		hSpd = 0;
		sprite_index = spr_dead;
			
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
