if(!inicializar){
	scr_dialogue();
	inicializar = true;
}

if(keyboard_check_pressed(vk_enter)){
	if(pagina < ds_grid_height(texto_grid) - 1){
		pagina++;
	}
	else{
		if(op_num != 0){
			op_draw = true;
		}
		else{
			global.dialogo = false;
			//global.stateDialogue++;
			instance_destroy();
		}
	}
}