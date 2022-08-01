/// @description Insert description here
// You can write your code in this editor

var target = instance_place(x, y, obj_father);

//if its touching target
if(target){
	if(target.id != father){
		//check who is the father
		var fatherObj= object_get_parent(target.object_index);
		
		if(fatherObj != object_get_parent(father.object_index)){
			if(target.life > 0){
				target.state = "hit";
				target.life -= damage;
				instance_destroy();
			}
		}
	}
}