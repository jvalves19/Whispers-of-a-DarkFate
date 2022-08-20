// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#region PLAYER CONTROLS
function player_controls(){
	right = keyboard_check(ord("D"));
	left = keyboard_check(ord("A"));
	down = keyboard_check(ord("S"));
	jump = keyboard_check_pressed(ord("W"));
	
	attack = keyboard_check_pressed(ord("J"));
	ultimate = keyboard_check_pressed(ord("K"));
	
	dash = keyboard_check_pressed(vk_space);	
	
	heal = down && ultimate;
}
#endregion

function player_combo_attack(){
	damage.damage = atk * atkMult;
	damage.father = id;
	canAttack = false;
}

#region SCREEN ALIGN
function define_align(_ver, _hor){
	draw_set_halign(_hor);
	draw_set_valign(_ver);
}
#endregion

#region MENU
function create_menu(){
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
#endregion

#region CHANGE OPTION MENU
function change_option(){
	var _qtd = array_length(menu);
	
	_up = keyboard_check_pressed(vk_up);
	_down = keyboard_check_pressed(vk_down);
	_option = keyboard_check_pressed(vk_enter);

	//Changing Selection
	if(_up && sel <= 0) sel = _qtd;
	if(_up) sel--;


	if(_down && sel >= _qtd - 1 ) sel=-1;
	if(_down) sel++;	
}
#endregion