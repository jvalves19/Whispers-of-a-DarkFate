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
	
		if(sprite_index != spr_bandit1Idle){
			sprite_index = spr_bandit1Idle;
			image_index = 0;
		}
		
		//Patrol State Begin
		if(irandom(timer_state > 100)){
			state = "walk";
			timer_state = 0;
		}
		scr_enemy_attack(obj_player, dist_player, xscale);
	
		break;
	#endregion
	
	#region walk
	case "walk":
		timer_state++;
		
		if(sprite_index != spr_bandit1Walk){
			sprite_index = spr_bandit1Walk;
			image_index = 0;
			//Horizontal Speed can be alternated between 1 or -1
			hSpd = choose(1, -1) * global.spd_mult;
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
		attacking(spr_bandit1Attack1, 3, 8, sprite_width/5, -sprite_height/5, 1, 1, "idle");
		
		break;
	#endregion

	#region hit and death
	case "hit":
		get_hit(spr_bandit1Hit, 0);
	
		break;
	
	//You re dead now
	case "dead":
		dying(spr_bandit1Dead);
	
		break;
	#endregion
	
	default:
		state = "idle";
}