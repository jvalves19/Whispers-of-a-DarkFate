/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

//Method Attack
///@method attacking()
attacking = function(_sprite_index, _image_index_min, _image_index_max, _dist_x, _dist_y, _xscale_damage, _yscale_damage, _next_state){
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
	
	if(image_index >= _image_index_min && damage == noone && image_index < _image_index_max && canAttack){
		damage = instance_create_layer(x + _dist_x, y + _dist_y, layer, obj_damage);
		damage.damage = atk;
		damage.father = id;
		damage.image_xscale = _xscale_damage;
		damage.image_yscale = _yscale_damage;
		canAttack = false;	
	}
	
	if(damage != noone && image_index >= _image_index_max){
		instance_destroy(damage)
		damage = noone;
	}

}

//Method Hit
///@method get_hit()
get_hit = function(_sprite_index, _image_index){
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
		if(image_index >= _image_index){
			state = "dead";
		}
}
	
///@method dying()
dying = function(_sprite_index){		
	if(sprite_index != _sprite_index){
		sprite_index = _sprite_index;
		image_index = 0;
		hSpd = 0;
	}
	
	//is dead
	if(image_index > image_number-1){
		image_speed = 0;
		image_alpha -= 0.01;
			
		if(image_alpha <= 0) instance_destroy();
	}
}