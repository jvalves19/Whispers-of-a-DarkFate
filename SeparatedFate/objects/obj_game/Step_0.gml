/// @description Insert description here
// You can write your code in this editor

pause = keyboard_check_pressed(vk_escape);

if(pause){
	if(room != rm_pause){
		if(instance_exists(obj_player)){
			obj_player.persistent = false;
			isPaused = true;
			instance_activate_all();
		}
		room_previous(room);
		room_goto(rm_pause);
	}	
	else{
		room_goto_previous();
		instance_deactivate_all(true);
	}
}