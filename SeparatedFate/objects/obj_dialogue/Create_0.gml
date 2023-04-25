/// @description Insert description here
// You can write your code in this editor

text = "";
sel = 0;
pag = 0;

#region METODS

slot1 = "savegame1";
slot2 = "savegame2";
slot3 = "savegame3";

save_game1 = function(){
	saveGame(slot1);
	room_restart();
}
save_game2 = function(){
	saveGame(slot2);
	room_restart();
}
save_game3 = function(){
	saveGame(slot3);
	room_restart();
}


nave_game = function(){
	instance_activate_object(obj_pause);
	global.dialogo = false;
	room_restart();
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
	["Sim", menu_actions.carrega_menu, pause_list.options], 
	["Não", menu_actions.roda_metodo, nave_game]
];
menu_options = [
	["Livro 1", menu_actions.roda_metodo, save_game1], 
	["Livro 2", menu_actions.roda_metodo, save_game2],
	["Livro 3", menu_actions.roda_metodo, save_game3],
	["Cancelar", menu_actions.roda_metodo, nave_game]
];
menus = [menu, menu_options];
menu_sel = array_create(array_length(menus), 0);