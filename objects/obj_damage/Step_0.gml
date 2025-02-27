//check how much collide with the object
//return "who collides? obj_father" "save at list? target_list"
var target;
var target_list = ds_list_create();

var qtd = instance_place_list(x, y, obj_father, target_list, 0);

//Add every target in the damage list
for(var i = 0; i < qtd; i++){
	var actual = target_list[| i];
	
	//Check if actual its invincible
	if(actual.invincible){
		continue;
	}
	
	//check if the actual target != father obj
	if(object_get_parent(actual.object_index) != object_get_parent(father.object_index)){		
		var pos = ds_list_find_index(apply_damage, actual);
		
		//if my actual target isnt in the list then add it
		if(pos == -1){
			ds_list_add(apply_damage, actual);
		}
	}
}

//applying damage
var tam = ds_list_size(apply_damage);
for(var i = 0; i < tam; i++){
	target = apply_damage[| i].id;	
	
	if(target.life > 0){
		if(target.stagger <= 0) {
			target.state = "hit";
			target.image_index = 0;
		}
		target.life -= damage;
	}	
}

//Destroying the lists to clear space
ds_list_destroy(apply_damage);
ds_list_destroy(target_list);

if(destroy){
	instance_destroy();
}
else{
	y = father.y - father.sprite_height/3;

	if(qtd){
		instance_destroy();
	}
}