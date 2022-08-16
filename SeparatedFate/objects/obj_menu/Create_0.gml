/// @description Insert description here
// You can write your code in this editor

menu = ["Begin Story", "Read Story", "End Game"];
sel = -1;

#region METODS

//find the functions Create_menu() and
//Change_option() on scripts src_functions
draw_menu = function(){
	create_menu();
}

select_menu = function(){
	change_option();
	
	//Play Game
	if(sel == 0 && _option) room_goto(rm_cutscene);
	//Load Game
	//if(sel == 1 && _option) room_goto(rm_loadGame);
	//Exit Game
	if(sel == 2 && _option) game_end();
}
#endregion