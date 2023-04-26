/// @description Insert description here
// You can write your code in this editor
var target = instance_place(x, y, obj_father);

if(target){
	if(target.id != father){
		if(target.life > 0){
			target.state = "hit";
			target.image_index = 0;
			target.life -= damage;
			instance_destroy();
		}
		
	}
}

