if(inicializar){
	define_align(fa_middle, fa_center);
	draw_set_font(fnt_game_over)
	
	draw_sprite_ext(spr_pixel, 0, 1000, 0, 920, 100, 0, c_black, 0.5);
	draw_text(1500, 50, "Enter ou x para Selecionar");
	
	draw_set_font(-1);
	define_align(-1, -1);
	
	var _guiW = display_get_gui_width();
	var _guiH = display_get_gui_height();

	var _xx = 0;
	var _yy = _guiH - 100;
	var _color = c_black;	

	draw_set_font(fnt_dialogue);

	draw_rectangle_color(_xx, _yy, _guiW, _guiH, _color, _color, _color, _color, false);
	draw_text_ext(_xx + 32, _yy + 10, texto_grid[# Infos.Texto, pagina], 32, _guiW - 64);
	draw_text(_xx + 16, _yy - 60, texto_grid[# Infos.Nome, pagina]);
	
	
	
	if(op_draw){
		var _opX = _xx + 32;
		var _opY = _yy - 256;
		var _opSep = 96;
		var _opBorda = 6;
		
		op_selecionada += up - down;
		op_selecionada = clamp(op_selecionada, 0, op_num-1);
		
		for(var i = 0; i < op_num; i++){
			var _stringW = string_width(op[i]);
			draw_sprite_ext(spr_opBack, 0, _opX, _opY - (_opSep * i), (_stringW + _opBorda * 2)/16, 1, 0, c_white, 1);
			draw_text(_opX + _opBorda, _opY - (_opSep * i), op[i]);
			
			if(op_selecionada == i){	
				draw_sprite(spr_seletor, 0, _xx + 8, _opY - (_opSep * i) + 8);
			}
		}
		
		if(keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1)){
			var _dialogue = instance_create_layer(x, y, "Dialogue", obj_dialogo)
			_dialogue.npc_nome = op_resposta[op_selecionada];
			
			instance_destroy();
		}
	}
	
}