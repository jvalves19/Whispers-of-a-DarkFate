/// @description Insert description here
// You can write your code in this editor

var outro = instance_place(x, y, obj_father);

//if its touching another one
if(outro){
	if(outro.id != father){
		if(outro.life > 0){
			outro.state = "hit";
			outro.life -= damage;
			instance_destroy();
		}
	}
}