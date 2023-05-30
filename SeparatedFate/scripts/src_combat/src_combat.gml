function scr_enemy_attack(target, dist_player, xscale){
	//Check if player is on collision line
	var player = collision_line(x, y - sprite_height/4, x + ((dist_player/3)*xscale), y - sprite_height/4, target, 0, 1);

	if(player){
		state = "attack";
	}
}

///@method attacking()
function attacking(_sprite_index, _image_index_min, _image_index_max, _dist_x, _dist_y, _xscale_damage, _yscale_damage, _next_state){
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
		damageMove = noone;
	}
	
	if(image_index > image_number-1){
		state = _next_state;
	}
	
	if(image_index >= _image_index_min && damage == noone && image_index < _image_index_max && canAttack){			
		damage = instance_create_layer(x + _dist_x, y + _dist_y, layer, obj_damage);
		damage.damage = atk;
		damage.father = id;
		damage.image_xscale = _xscale_damage;
		damage.image_yscale = _yscale_damage;
		canAttack = false;	
		
		if(_sprite_index == spr_samAttack3){
			var _xx = x + lengthdir_x(0, image_angle);
			damageMove = instance_create_layer(_xx, y - 30, layer, obj_damMove)
			damageMove.speed = 5;
			damageMove.direction = -90 + 90 * other.image_xscale;
			damageMove.image_angle = direction;
			
			damageMove.damage = atk;
			damageMove.father = id;
			damageMove.image_xscale = _xscale_damage;
			damageMove.image_yscale = _yscale_damage;
			canAttack = false;	
		}		
	}
	
	if(damageMove != noone && image_index >= _image_index_max - 5){
		instance_destroy(damageMove)
		damageMove = noone;
	}
	
	if(damage != noone && image_index >= _image_index_max){
		instance_destroy(damage)
		damage = noone;
		
	}
}

function enemyUltimate(_sprite_index, _dist_x, _dist_y, _xscale_damage, _yscale_damage){
	hSpd = 0;
	if(sprite_index != _sprite_index){
		sprite_index = _sprite_index;
		image_index = 0;	
		hSpd = 0;
	}	
	
	if(_sprite_index == spr_samUltimate){
		if(image_index >= 3 && image_index <= 30){
			//global.spd_mult = 0.5;
			if((image_index % 2) == 1){			
				obj_samurai.x = obj_player.x;
				obj_samurai.y = obj_samurai.y;
			}
			
			if((image_index % 2) == 0){
				damage = instance_create_layer(x + _dist_x, y + _dist_y, layer, obj_damage);
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


///@method get_hit()
function get_hit(_sprite_index, _image_index){
	if(sprite_index != _sprite_index){
		if(object_index == obj_player) audio_play_sound(snd_hit, 8, false);
		if(object_index == obj_samurai) audio_play_sound(snd_hit2, 12, false);
		
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
		if(image_index >= _image_index){
			state = "dead";
		}
}

///@method dying()
function dying (_sprite_index){
		if(sprite_index != _sprite_index){
			sprite_index = _sprite_index;
			image_index = 0;
			hSpd = 0;
		}
	
		//is dead
		if(image_index > image_number-1){
			image_speed = 0;
			image_alpha -= 0.01;
			
			if(image_alpha <= 0){
				if(object_index == obj_enemy1){
					global.playerXP = global.playerXP + irandom_range(300, 400);
					instance_create_layer(x, y-10, layer, obj_potions)
				}
				if(object_index == obj_bandit1){
					global.playerXP = global.playerXP + irandom_range(800, 900);
				}
				instance_destroy();
			}
		}	
}
	
function setSpell(_xx, _damage, _aura, _objSpell){
	damage = instance_create_layer(_xx, y - 30, layer, _objSpell)
	damage.speed = 5;
	damage.direction = -90 + 90 * other.image_xscale;
	damage.image_xscale = other.image_xscale;
	damage.image_angle = direction;
				
	damage.damage = _damage;
	damage.father = id;
	canAttack = false;
	aura -= _aura;
	
	with(obj_player){
		if(aura - _aura <= 0){
			canSpell = false;
		}
	}
}