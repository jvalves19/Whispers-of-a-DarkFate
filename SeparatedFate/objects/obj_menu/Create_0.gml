/// @description Insert description here
// You can write your code in this editor
audio_play_sound(msc_menu, 1000, true);
audio_sound_gain(msc_menu, 1, 0);

pag = 0;
sel = 0;

slot1 = "savegame1";
slot2 = "savegame2";
slot3 = "savegame3";

#region METODS
new_game = function(){
	audio_stop_sound(msc_menu);
	room_goto(rm_cutsc);
}
load_game1 = function(){
	audio_stop_sound(msc_menu);
	loadGame(slot1);
}
load_game2 = function(){
	audio_stop_sound(msc_menu);
	loadGame(slot2);
}
load_game3 = function(){
	audio_stop_sound(msc_menu);
	loadGame(slot3);
}
end_game = function(){
	 game_end();
}
screen_config = function(_val){
	switch(_val){
		case 0: 
			window_set_fullscreen(true); break;
		case 1: 
			window_set_fullscreen(false); break;
	}
}
//find the functions Create_menu() and
//Change_option() on scripts src_functions
draw_menu = function(menu){
	create_menu(menu, 150);
}
select_menu = function(menu){
	change_option(menu);
}
#endregion

menu = [
	["Começar História", menu_actions.roda_metodo, new_game], 
	["Continuar História", menu_actions.load_menu, menu_list.load], 
	["Opções", menu_actions.load_menu, menu_list.options], 
	["Sair", menu_actions.roda_metodo, end_game]
];
menu_load = [
	["Livro 1", menu_actions.roda_metodo, load_game1], 
	["Livro 2", menu_actions.roda_metodo, load_game2],
	["Livro 3", menu_actions.roda_metodo, load_game3],
	["Voltar", menu_actions.load_menu, menu_list.main]
];
menu_options = [
	["Video", menu_actions.load_menu, menu_list.video],
	["Áudio", menu_actions.load_menu, menu_list.audio], 
	["Voltar", menu_actions.load_menu, menu_list.main]
];
menu_audio = [
	["Volume", menu_actions.config_menu, screen_config, 1, ["Menos", "Mais"]],
	["Idioma", menu_actions.config_menu, screen_config, 1, ["Português", "English"]],
	["Voltar", menu_actions.load_menu, menu_list.options]
];
menu_video = [
	["Tela Cheia", menu_actions.config_menu, screen_config, 1, ["On", "Off"]],
	["Voltar", menu_actions.load_menu, menu_list.options]
];

menus = [menu, menu_load, menu_options, menu_video, menu_audio];
menu_sel = array_create(array_length(menus), 0);
alterando = false;