/// @description Insert description here
// You can write your code in this editor

var ground = place_meeting(x, y + 1, obj_block);

if(!ground){
	vSpd += GRAVITY * weight;
}


switch(state){
	//Enemy Idle State
	case "idle":
		hSpd = 0;
		timer_state++;
	
		if(sprite_index != spr_enemy1Idle){
			image_index = 0;
		}
		sprite_index = spr_enemy1Idle;
		
		//Patrol State Begin
		if(irandom(timer_state > 100)){
			state = "walk";
			timer_state = 0;
		}
		scr_enemy_attack(obj_player, dist_player, xscale);
	
		break;
	
	//Enemy Walk State
	case "walk":
		timer_state++;
		
		if(sprite_index != spr_enemy1Walk){
			image_index = 0;
			
			//Horizontal Speed can be alternated between 1 or -1
			hSpd = choose(1, -1);
		}
		sprite_index = spr_enemy1Walk;
		
		//Patrol State End
		if(irandom(timer_state > 300)){
			state = "idle";
			timer_state = 0;
		}
		scr_enemy_attack(obj_player, dist_player, xscale);

		
		break;
		
		
	case "attack": 
		hSpd = 0;
		
		if(sprite_index != spr_enemy1AttackA){
			image_index = 0;
		}
		sprite_index = spr_enemy1AttackA;
		
		if(image_index > image_number-1){
			state = "idle";
		}
			
		if(image_index >= 4 && damage == noone){
			//Create obj Damage
			damage = instance_create_layer(x + sprite_width/3 , y-25 , layer, obj_damage);
			damage.damage = atk;
			damage.father = id;
		}
		//destroy obj damage
		if(damage != noone && image_index > 5){
			instance_destroy(damage)
			damage = noone;
		}
		
		
		break;

	//Get Hit 
	case "hit":
		if(sprite_index != spr_enemy1Hit){
			image_index = 0;
			//life -= 5;
		}
		sprite_index = spr_enemy1Hit;
		
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
		
	//You re dead now
	case "dead":
		if(sprite_index != spr_enemy1Dead){
			image_index = 0;
		}
		sprite_index = spr_enemy1Dead;
		
		//is dead
		if(image_index > image_number-1){
			image_speed = 0;
			image_alpha -= 0.01;
			
			if(image_alpha <= 0) instance_destroy();
		}
	
		break;
	
}