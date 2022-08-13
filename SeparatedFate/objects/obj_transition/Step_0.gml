/// @description Insert description here
// You can write your code in this editor

if(changeRoom){
	alpha -= 0.02;
}
else{
	alpha += 0.02;
}

if(alpha >= 1){
	room_goto(destination);
	
	obj_player.x = destionation_x;
	obj_player.y = destionation_y;
}