/// @description Insert description here
// You can write your code in this editor

var ground = place_meeting(x, y + 1, obj_block);

if(!ground){
	vSpd += GRAVITY * weight * global.spd_mult;
}

switch(state){
	#region idle
	case "idle":
		hSpd = 0;
		timer_state++;
	
		if(sprite_index != spr_enemy1Idle){
			sprite_index = spr_enemy1Idle;
			image_index = 0;
		}
		
		//Patrol State Begin
		if(irandom(timer_state > 100)){
			if(dist < 10) {
				hSpd = lengthdir_x(1, dir);
				if(sign(hSpd) != 0) image_xscale = sign(hSpd);
			}
			
		}
			
		break;
	#endregion
	
	#region walk
	case "walk":
		timer_state++;
		
		if(sprite_index != spr_enemy1Walk){
			sprite_index = spr_enemy1Walk;
			image_index = 0;
			//Horizontal Speed can be alternated between 1 or -1
			hSpd = choose(1, -1) * global.spd_mult;
		}
		if(dist > 10){
			hSpd = lengthdir_x(max_hSpd, dir);
		}		
		//Patrol State End
		if(irandom(timer_state > 300)){
			state = "idle";
			timer_state = 0;
		}
		scr_enemy_attack(obj_player, dist_player, xscale);
		
		break;
	#endregion
	
	#region attack
	case "attack": 
		attacking(spr_enemy1AttackA, 3, 8, sprite_width/5, -sprite_height/5, 1, 1, "idle");
		
		break;
	#endregion

	#region hit and death
	case "hit":
		stagger = room_speed * 1.2;
		
		get_hit(spr_enemy1Hit, 0);
	
		break;
	
	//You re dead now
	case "dead":
		dying(spr_enemy1Dead);
	
		break;
	#endregion
	
	default:
		state = "idle";
}