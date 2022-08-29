/// @description Insert description here
// You can write your code in this editor

var ground = place_meeting(x, y + 1, obj_block);

if(!ground){
	vSpd += GRAVITY * weight * global.spd_mult;
}

//Check if player is here
var player = place_meeting(x, y, obj_player);
var action = keyboard_check_released(ord("E"));

if(player){
	sense = true;
}else{
	sense = false;
}

if(sense && action){
	if(objText == noone){
		instance_deactivate_object(obj_pause);
		objText = instance_create_layer(x, y, layer, obj_dialogue);
		objText.text = "Deseja Salvar o Jogo?";
	}
	else{
		instance_activate_object(obj_pause);
		instance_destroy(objText);
		objText = noone;
	}
	
	//saveGame();
}

if(!player){
	instance_activate_object(obj_pause);
	instance_destroy(objText);
	objText = noone;
}