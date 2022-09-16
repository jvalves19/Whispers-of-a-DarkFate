if(!inicializar){
	scr_dialogue();
	inicializar = true;
}
else{
	obj_npcFather.sense_draw = false;
}

if(pagina < ds_grid_height(texto_grid) - 1){
	obj_npcFather.sense_draw = false;
	if(keyboard_check_pressed(vk_enter)){
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
			if(keyboard_check_pressed(vk_enter)){
				global.dialogo = false;
				instance_destroy();
			}
		}
	}
}