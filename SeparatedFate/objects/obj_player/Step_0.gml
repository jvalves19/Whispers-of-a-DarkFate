/// @description Insert description here
// You can write your code in this editor

//Initializing variables
var right, left, jump, attack;
var ground = place_meeting(x, y + 1, obj_block);
var fall = vSpd!=0;

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
jump = keyboard_check_pressed(ord("W"));
attack = keyboard_check_pressed(ord("J"));

//Gravity
if(!ground && (vSpd < max_vSpd *2 )){
	vSpd += GRAVITY * weight;
}

//State Machine
switch(state){
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
		
		break;
		
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
	
		break;
	
	//State Jump
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
		if(image_index >= 3  && damage == noone && canAttack){
			damage = instance_create_layer(x + sprite_width/6 , y-25 , layer, obj_damage);
			damage.damage = atk * atkMult;
			damage.father = id;
			canAttack = false;
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
			sprite_index = spr_dead;
			
			if(image_index > image_number-1){
				image_speed = 0;
			}
	
			break;
			
		default: 
			state = "idle";
			
}

if(keyboard_check(ord("R"))) room_restart();