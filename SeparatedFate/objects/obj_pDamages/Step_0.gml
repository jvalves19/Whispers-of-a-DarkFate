//check how much collide with the object
//return "who collides? obj_father" "save at list? target_list"
var _target;
var _target_list = ds_list_create();
var _qtd = instance_place_list(x, y, obj_enemy_father, _target_list, false);

//Add every target in the damage list
if(_qtd > 0){
	for(var i = 0; i < _qtd; i++){
		var _actual = _target_list[| i];
	
		//Check if actual its invincible
		if(_actual.invincible){
			continue;
		}
	
		//check if the actual target != father obj
		if ds_exists(apply_damage, ds_type_list){
			if(ds_list_find_index(apply_damage, _actual)) == -1{
				ds_list_add(apply_damage, _actual);
			}
		}
	}
}

//applying damage
if ds_exists(apply_damage, ds_type_list){
	var tam = ds_list_size(apply_damage);
	for(var i = 0; i < tam; i++){
		_target = apply_damage[| i].id;	
	
		if(global.currentBlade == 0){
			if(obj_player.combo == 2){
				if(obj_player.aura < global.pMaxAura){
					obj_player.aura = obj_player.aura+5;
				}
			}
		}
		if(global.currentBlade == 1){
			damage = damage + (2*global.dmgFire)
		}
	
		if(global.currentBlade == 2){
			if(obj_player.life < global.pMaxLife){
				obj_player.life = obj_player.life+15;
			}
		}
	
		if(_target.life > 0){
			if(_target.stagger <= 0) {
				_target.state = "hit";
				_target.image_index = 0;
			}
			_target.life -= damage;
			if(object_get_parent(_target.object_index) == obj_enemy_father){
				screenshake(6, true, irandom_range(0, 180));
				if(_target.life <= 0) _target.state = "dead"
			}
		}	
	}

	//Destroying the lists to clear space
	ds_list_destroy(apply_damage);
}

if(destroy){
	instance_destroy();
	ds_list_destroy(_target_list);
}
else{
	y = father.y - father.sprite_height/3;
	
	if(_qtd){
		instance_destroy();
	}
}