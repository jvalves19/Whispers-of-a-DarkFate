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
	if(sel == 0 && _option){
		audio_stop_sound(msc_menu);
		room_goto(rm_cutsc);
	}
	//Load Game
	if(sel == 1 && _option){
		audio_stop_sound(msc_menu);
		loadGame();
	}
	//Exit Game
	if(sel == 2 && _option) game_end();
}
#endregion

audio_play_sound(msc_menu, 1000, true);
audio_sound_gain(msc_menu, 1, 0);