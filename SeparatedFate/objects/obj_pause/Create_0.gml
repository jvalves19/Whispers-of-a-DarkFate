pause = false;
pauseSurf = 1;
pauseSurfBuffer = 1;

resW = 1920;
resH = 1080;

value = 0;
sel = 0;
pag = 0;

#region METODS
pause_game = function(){
	if(pause){
		pause = false;
		instance_activate_all();
		
		if(surface_exists(pauseSurf)) surface_free(pauseSurf);
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
	else{		
		pause = true;
		
		instance_deactivate_all(true);
		
		pauseSurf = surface_create(resW, resH);
		surface_set_target(pauseSurf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();

		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
			
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);		
	}
}
restart_game = function(){
	game_restart();
}

draw_menu = function(menu){
	if(pause) create_menu(menu);
}

select_menu = function(menu){
	if(pause) change_option(menu);
}
#endregion

menu = [
	["Continuar", menu_actions.roda_metodo, pause_game], 
	["Opções", menu_actions.carrega_menu, pause_list.options], 
	["Voltar ao Menu", menu_actions.roda_metodo, restart_game]

];
menu_options = [
	["Áudio", menu_actions.roda_metodo, restart_game], 
	["Video", menu_actions.roda_metodo, restart_game],
	["Voltar", menu_actions.carrega_menu, pause_list.main]
];
menus = [menu, menu_options];
menu_sel = array_create(array_length(menus), 0);