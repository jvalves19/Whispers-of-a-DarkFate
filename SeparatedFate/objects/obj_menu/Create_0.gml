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

//find the functions Create_menu() and
//Change_option() on scripts src_functions
draw_menu = function(menu){
	create_menu(menu);
}
select_menu = function(menu){
	change_option(menu);
}
#endregion

menu = [
	["Começar História", menu_actions.roda_metodo, new_game], 
	["Continuar História", menu_actions.carrega_menu, menu_list.load], 
	["Opções", menu_actions.carrega_menu, menu_list.options], 
	["Sair", menu_actions.roda_metodo, end_game]
];
menu_load = [
	["Livro 1", menu_actions.roda_metodo, load_game1], 
	["Livro 2", menu_actions.roda_metodo, load_game2],
	["Livro 3", menu_actions.roda_metodo, load_game3],
	["Voltar", menu_actions.carrega_menu, menu_list.main]
];
menu_options = [
	["Áudio", menu_actions.roda_metodo, end_game], 
	["Video", menu_actions.roda_metodo, end_game],
	["Voltar", menu_actions.carrega_menu, menu_list.main]
];
menus = [menu, menu_load, menu_options];
menu_sel = array_create(array_length(menus), 0);