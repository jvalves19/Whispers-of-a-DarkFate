/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

max_life = 100;
life = max_life;

max_aura = 150;
aura = max_aura;

healthbar_width = 512;
healthbar_height = 96;
healthbar_x = (400/2) - (healthbar_width/4);
healthbar_y = ystart - 300;

max_hSpd = 4;
max_vSpd = 6;
dash_Spd = 6;

combo = 0;
damage = noone;

atk = 20;
canAttack = true;
atkMult = 1;

//Methods to attack


state_attack = function(ground){
	if(ground){
		state = "attack";
		hSpd = 0;
		image_index = 0;
	}
}

///@method player_attacking()
player_attacking = function(_sprite_index, _image_index_min, _image_index_max, _dist_x, _dist_y, _xscale_damage, _yscale_damage, _next_state, _damage_obj){
	if(!_xscale_damage) _xscale_damage = 1;
	if(!_yscale_damage) _yscale_damage = 1;
	
	//Use UNDEFINED cause _next_state receive a String Value
	if(_next_state == undefined) _next_state = "idle";

	hSpd = 0;
	if(sprite_index != _sprite_index){
		sprite_index = _sprite_index;
		image_index = 0;
		canAttack = true;
		damage = noone;
	}
	
	if(image_index > image_number-1){
		state = _next_state;
	}
	
	if(combo < 2){
		_damage_obj = obj_damage;
	}
	else {
		_damage_obj = obj_damageWater
	}
	
	if(image_index >= _image_index_min && damage == noone && image_index < _image_index_max && canAttack){
		damage = instance_create_layer(x + _dist_x, y + _dist_y, layer, _damage_obj);
		damage.image_xscale = _xscale_damage;
		damage.image_yscale = _yscale_damage;
		
		damage.damage = atk * atkMult;
		damage.father = id;
		canAttack = false;
	}
	
	if(attack && combo < 2 && image_index >= image_number-3){
		combo++;
		image_index = 0;
		atkMult += 0.5;	
	}
		
	if(image_index > image_number-1){
		state = _next_state;
		hSpd = 0;
		combo = 0;
		atkMult = 1;
	}
	
	if(damage != noone && image_index >= _image_index_max){
		instance_destroy(damage)
		damage = noone;
	}
}

///@method player_ultimate()
player_ultimate = function(_sprite_index, _dist_x, _dist_y, _xscale_damage, _yscale_damage){
	if(aura > 0){			
			if(sprite_index != _sprite_index){
				sprite_index = _sprite_index;
				image_index = 0;	
				aura = aura - 25;
				hSpd = 0;
			}	
			
			for(i = 0; i < image_number-1; i++){
				damage = instance_create_layer(x + _dist_x, y + _dist_y, layer, obj_damage);
				damage.image_xscale = _xscale_damage;
				damage.image_yscale = _yscale_damage;
				
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
}

///@method player_get_hit()
player_get_hit = function(_sprite_index){
	if(sprite_index != _sprite_index){
		sprite_index = _sprite_index;
		image_index = 0;
		hSpd = 0;
	}
		
	if(life > 0){
		if(image_index > image_number-1){
			state = "idle";
		}
	}
	else
		if(image_index >= 0){
			state = "dead";
		}
}