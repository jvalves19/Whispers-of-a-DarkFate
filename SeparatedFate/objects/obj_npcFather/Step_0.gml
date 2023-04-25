var ground = place_meeting(x, y + 1, obj_block);

//Gravity
if(!ground && (vSpd < max_vSpd * 2 )){
	vSpd += GRAVITY * weight * global.spd_mult;
}

var player = distance_to_object(obj_player)

if(player < 10){
	sense = true;
	sense_draw = true;
} else{
	sense = false;
	sense_draw = false;
}