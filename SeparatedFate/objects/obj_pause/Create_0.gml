/// @description Insert description here
// You can write your code in this editor

menu = ["Resume Story", "Main Menu", "End Game"];
sel = -1;

#region METODS
draw_menu = function(){
	draw_set_font(fnt_menu);
	define_align(0, 0);

	var _qtd = array_length(menu);
	var _alt = display_get_gui_height();
	var _space_y = string_height("I") + 16;

	for(var i = 0 ; i < _qtd; i++){
		var _color = c_white;
		var _text = menu[i];
	
		if(sel == i){
			_color = c_red;
		}
	
		draw_text_color(20, (_alt / 2) + (i * _space_y), _text, _color, _color, _color, _color, 1); 
	}

	//Reseting Variables
	draw_set_font(-1);
	define_align(-1, -1);
}

select_menu = function(){
	var _up, _down, _option;

	_up = keyboard_check_pressed(vk_up);
	_down = keyboard_check_pressed(vk_down);
	_option = keyboard_check_pressed(vk_enter);

	//Changing Selection
	if(_up && sel <= 0) sel=3;
	if(_up) sel--;


	if(_down && sel >= 2 ) sel=-1;
	if(_down) sel++;

	//Play Game
	if(sel == 0 && _option) room_goto(rm_castle);
	//Main Menu
	//if(sel == 1 && _option) room_goto(rm_menu);
	//Exit Game
	if(sel == 2 && _option) game_end();
}
#endregion