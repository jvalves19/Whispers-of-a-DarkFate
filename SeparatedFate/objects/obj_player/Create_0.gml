// Inherit the parent event
event_inherited();

nome = "Ílkael";

charSprite(spr_pIdle, spr_pWalk);

#region LIFE AND AURA
max_hSpd = 4;
max_vSpd = 6;
dash_Spd = 6;

global.pMaxLife = global.pMaxLife;
life = global.pMaxLife;

global.pMaxAura = global.pMaxAura;
aura = global.pMaxAura ;
#endregion

#region PLAYER VARIABLES
quantity = 0;
combo = 0;
damage = noone;

atk = global.pAtk;
atkMult = 1;
canAttack = true;

canSpell = true;
spellTimer = room_speed*2;
time_spell = spellTimer;

canUltimate = true;
ultimateTimer = room_speed*10;
time_ultimate = ultimateTimer;

invincible = false;
invincible_timer = room_speed*0.35;
time_invincible = invincible_timer;

global.currentBlade = global.currentBlade;
global.playerID = object_index;
#endregion

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
	_damage_obj = obj_pDamages;
	
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
	
	if(global.currentBlade == 2){
		sprite_set_speed(_sprite_index, 20, spritespeed_framespersecond);
	}
	else{
		sprite_set_speed(_sprite_index, 10, spritespeed_framespersecond);
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
player_ultimate = function(_sprite_index, _aura, _dist_x, _dist_y, _xscale_damage, _yscale_damage){
	if((aura - _aura) >= 0){
		hSpd = 0;
		if(sprite_index != _sprite_index){
			sprite_index = _sprite_index;
			image_index = 0;	
			aura -= _aura;
			hSpd = 0;
		}	
	}
	if(global.currentUltimate == 0){
		if(image_index >= 5 && image_index <= 20){
			//global.spd_mult = 0.5;
			if((image_index % 2) == 1){
				damage = instance_create_layer(x + _dist_x, y + _dist_y, layer, obj_pDamages);
				damage.image_xscale = _xscale_damage;
				damage.image_yscale = _yscale_damage;
				
				damage.damage = atk;
				damage.father = id;
			}
		}
	}
	else if(global.currentUltimate == 1){
		if(image_index >= 4 && image_index <= 20){
			//global.spd_mult = 0.5;
			if((image_index % 2) == 1){
				damage = instance_create_layer(x + _dist_x, y + _dist_y, layer, obj_damageThunder);
				damage.image_xscale = _xscale_damage;
				damage.image_yscale = _yscale_damage;
				
				damage.damage = atk;
				damage.father = id;
			}
		}
	}				
	if(image_index > image_number-1){
		state = "idle";
		hSpd = 0;
		if(damage){
			instance_destroy(damage, false);
			damage = noone;
		}
	}	
}