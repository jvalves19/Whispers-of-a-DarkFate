player_controls();

if(!inicializar){
	scr_dialogue();
	inicializar = true;
}
else{
	obj_npcFather.sense_draw = false;
}

if(pagina < ds_grid_height(texto_grid) - 1){
	instance_deactivate_object(obj_pause);
	
	obj_npcFather.sense_draw = false;
	if(keyboard_check_pressed(vk_enter)) || (gamepad_button_check_pressed(0, gp_face1)){
		pagina++;
	}
}
else{
	if(op_num != 0){
		obj_npcFather.sense_draw = false;
		op_draw = true;
	}
	else{
		if(op_num != 0){
			op_draw = true;
		}
		else{
			if(keyboard_check_pressed(vk_enter)) || (gamepad_button_check_pressed(0, gp_face1)){
				global.dialogo = false;
				instance_activate_object(obj_pause);
				instance_destroy();
			}
			if(instance_exists(obj_transition)){
				if(obj_transition.destination == rm_seaport02 || obj_transition.destination == rm_seaport01){
					global.dialogo = false;
					instance_destroy();
				}
			}
		}
	}
}