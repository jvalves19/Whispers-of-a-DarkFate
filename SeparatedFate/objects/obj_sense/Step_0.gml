/// @description Insert description here
// You can write your code in this editor

//Check if player is here
var player = place_meeting(x, y, global.actPlayer);

if(player){	sense = true;	} 
else {	sense = false;	}

if(sense){
	var tran = instance_create_layer(0, 0, layer, obj_transition);
	
	tran.destination = destination;
	tran.destionation_x = destionation_x;
	tran.destionation_y = destionation_y;
}