/// @description Insert description here
// You can write your code in this editor

text = "";
menu = ["Yes", "No"];
sel = 0;

draw_menu = function(){
	create_menu();
}

select_menu = function(){
	change_option();
	
	//Play Game
	if(sel == 0 && _option){
		global.dialogo = false;	
		saveGame();
		room_restart();
	}
	//Load Game
	if(sel == 1 && _option){
		global.dialogo = false;
		room_restart();
	}
}