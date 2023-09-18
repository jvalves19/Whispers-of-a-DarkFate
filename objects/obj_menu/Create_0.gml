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
	config_screen(_val);
}
language_config = function(_val){
	config_language(_val);
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
	[translateText("menu_begin"), menu_actions.roda_metodo, new_game], 
	[translateText("menu_continue"), menu_actions.load_menu, menu_list.load], 
	[translateText("menu_options"), menu_actions.load_menu, menu_list.options], 
	[translateText("menu_exit"), menu_actions.roda_metodo, end_game]
];
menu_load = [
	[translateText("menu_load1"), menu_actions.roda_metodo, load_game1], 
	[translateText("menu_load2"), menu_actions.roda_metodo, load_game2],
	[translateText("menu_load3"), menu_actions.roda_metodo, load_game3],
	[translateText("menu_back"), menu_actions.load_menu, menu_list.main]
];
menu_options = [
	[translateText("Video"), menu_actions.load_menu, menu_list.video],
	[translateText("Áudio"), menu_actions.load_menu, menu_list.audio], 
	[translateText("menu_back"), menu_actions.load_menu, menu_list.main]
];
menu_audio = [
	[translateText("Volume"), menu_actions.config_menu, screen_config, 1, ["Menos", "Mais"]],
	[translateText("locate"), menu_actions.config_menu, language_config, global.langIndex, ["Português", "English"]],
	[translateText("menu_back"), menu_actions.load_menu, menu_list.options]
];
menu_video = [
	[translateText("fullscreen"), menu_actions.config_menu, screen_config, global.screenIndex, [translateText("opYes"), translateText("opNo")]],
	[translateText("menu_back"), menu_actions.load_menu, menu_list.options]
];

menus = [menu, menu_load, menu_options, menu_video, menu_audio];
menu_sel = array_create(array_length(menus), 0);
alterando = false;