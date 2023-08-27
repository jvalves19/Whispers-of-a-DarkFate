/// @description Insert description here
// You can write your code in this ed
if(changeRoom){
	alpha -= 0.02;
}
else{
	alpha += 0.02;
	instance_deactivate_object(obj_pause);
}

if(alpha >= 1){	
	room_goto(destination);

	global.actPlayer.x = destination_x; 
	global.actPlayer.y = destination_y;	

	instance_activate_object(obj_pause);
}

if(changeRoom && alpha <= 0){
	instance_destroy();
}