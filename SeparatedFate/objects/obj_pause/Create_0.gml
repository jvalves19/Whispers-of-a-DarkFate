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
		global.showTutorial = true;
		instance_activate_all();
		
		if(surface_exists(pauseSurf)) surface_free(pauseSurf);
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
	else{		
		pause = true;
		global.showTutorial = true;
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
screen_config = function(_val){
	config_screen(_val);
}
language_config = function(_val){
	config_language(_val);
}
draw_menu = function(menu){
	if(pause) create_menu(menu, -150);
}

select_menu = function(menu){
	if(pause) change_option(menu);
}
#endregion

menu = [
	[translateText("menu_continue"), menu_actions.roda_metodo, pause_game], 
	[translateText("menu_options"), menu_actions.load_menu, pause_list.options], 
	[translateText("menu_backMenu"), menu_actions.roda_metodo, restart_game]
];
menu_options = [
	[translateText("Video"), menu_actions.load_menu, menu_list.video],
	[translateText("Áudio"), menu_actions.load_menu, menu_list.audio], 
	[translateText("menu_back"), menu_actions.load_menu, pause_list.main]
];
menu_audio = [
	[translateText("Volume"), menu_actions.config_menu, screen_config, 1, ["Menos", "Mais"]],
	[translateText("locate"), menu_actions.config_menu, language_config, global.langIndex, ["Português", "English"]],
	[translateText("menu_back"), menu_actions.load_menu, pause_list.options]
];
menu_video = [
	[translateText("fullscreen"), menu_actions.config_menu, screen_config, global.screenIndex, [translateText("opYes"), translateText("opNo")]],
	[translateText("menu_back"), menu_actions.load_menu, pause_list.options]
];
menus = [menu, menu_options, menu_options, menu_video, menu_audio];
menu_sel = array_create(array_length(menus), 0);
alterando = false;
global.showTutorial = true;