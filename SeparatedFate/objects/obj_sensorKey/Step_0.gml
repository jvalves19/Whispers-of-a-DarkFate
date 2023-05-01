/// @description Insert description here
// You can write your code in this editor

//Check if player is here
var player = place_meeting(x, y, global.actPlayer);

var action = keyboard_check_released(ord("E")) || (gamepad_button_check_released(0, gp_face1));

if(player){
	sense = true;
}else{
	sense = false;
}

if(sense && action && global.key[keyNum]){
	var tran = instance_create_layer(0, 0, layer, obj_transition);
	
	tran.destination = destination;
	tran.destionation_x = destionation_x;
	tran.destionation_y = destionation_y;
}