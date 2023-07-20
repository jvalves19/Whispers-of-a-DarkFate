// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#region CHARACTERS SPRITES
function charSprite(_sprIdle, _sprWalk){
	sprIdle = _sprIdle;
	sprWalk = _sprWalk
}
#endregion

#region PLAYER CONTROLS
function player_controls(){
	down = (gamepad_button_check_pressed(0, gp_padd) ||
		keyboard_check_pressed(vk_down) 
	);
	up = (gamepad_button_check_pressed(0, gp_padu) ||
		keyboard_check_pressed(vk_up)
	);
	right = (gamepad_button_check(0, gp_padr) ||
		keyboard_check(ord("D"))
	);
	left = (gamepad_button_check(0, gp_padl) || 
		keyboard_check(ord("A"))
	);
	action = (gamepad_button_check_pressed(0, gp_face1) ||
		keyboard_check_pressed(ord("E")) 
	);
	jump = (gamepad_button_check_pressed(0, gp_face1) || 
		keyboard_check_pressed(ord("W"))
	);
	ultimate = (gamepad_button_check_pressed(0, gp_stickl) && (gamepad_button_check_pressed(0, gp_stickr))  ||
		keyboard_check_pressed(ord("K"))
	);
	changeSpell = (gamepad_button_check_pressed(0, gp_shoulderr)||
		keyboard_check_pressed(ord("Q"))
	);
	changeUltimate = (gamepad_button_check_pressed(0, gp_shoulderl) ||
		keyboard_check_pressed(ord("R"))
	);
	changeItem = (gamepad_button_check_pressed(0, gp_padd) ||
		keyboard_check_pressed(vk_tab)
	);
	useItem = (gamepad_button_check_released(0, gp_face4) ||
		keyboard_check_released(ord("I"))
	);
	attack = (gamepad_button_check_pressed(0, gp_face3) || 
		keyboard_check_pressed(ord("J"))
	);
	spell = (gamepad_button_check_pressed(0, gp_shoulderrb) ||
		keyboard_check_pressed(ord("L"))
	);
	dash = (gamepad_button_check_pressed(0, gp_face2) ||
		keyboard_check_pressed(vk_space)
	);	
	heal = (keyboard_check(ord("S")) && (keyboard_check_pressed(ord("K"))))
		|| (gamepad_button_check_pressed(0, gp_shoulderlb)
	);
}
#endregion

#region SCREEN ALIGN
function define_align_font(_ver, _hor, _font){
	draw_set_halign(_hor);
	draw_set_valign(_ver);
	draw_set_font(_font);
}
#endregion

#region MENU
enum menu_actions{
	roda_metodo,
	load_menu,
	config_menu
}
enum menu_list{
	main,
	load,
	options,
	audio,
	video
}
enum pause_list{
	main,
	options
}

function create_menu(_menu, _y){
	define_align_font(0, 0, fnt_menu2);

	var _qtd = array_length(_menu);
	var _alt = display_get_gui_height();
	var _space_y = string_height("I") + 16;
	var _opBorda = 4
	

	for(var i=0 ; i<_qtd; i++){
		var _color = c_white;
		var _text = _menu[i][0];
	
		if(menu_sel[pag] == i){
			var _stringW = string_width(menu_sel[pag]);
			_color = c_grey;
			draw_sprite_ext(spr_opBcg, 0, 32, ((_alt / 2) + _y) + (i * _space_y), (_stringW/2)+_opBorda, 1, 0, c_white, 1);
			draw_text_color(64, ((_alt)) + (i * _space_y+2), _text, _color, c_grey, _color, _color, 1);
		}
		draw_text_color(64, ((_alt / 2) + _y)+ (i * _space_y), _text, _color, c_blue, _color, _color, 1); 
	}

	//Reseting Variables
	define_align_font(-1, -1, -1);
}
#endregion

#region CHANGE OPTION MENU
function change_option(_menu){
	var _qtd = array_length(_menu) - 1;
	var _sel = menu_sel[pag];

	_up = keyboard_check_pressed(vk_up) || (gamepad_button_check_pressed(0, gp_padu));
	_down = keyboard_check_pressed(vk_down) || (gamepad_button_check_pressed(0, gp_padd));
	_option = keyboard_check_pressed(vk_enter) || (gamepad_button_check_pressed(0, gp_face1));

	//Changing Selection
	if(_up || _down){
		_sel += _down - _up;
		menu_sel[pag] = clamp(_sel, 0, _qtd);
	}
	
	if(_option){
		switch(_menu[_sel][1]){
			case menu_actions.roda_metodo: _menu[_sel][2](); break;
			case menu_actions.load_menu: pag = _menu[_sel][2]; break;
		}
	}
	
}
#endregion

#region GAME OVER AND BOSS DEFEATED SCREEN
function draw_gameover_screen(_string, _desc){
	//Get camera info
	var x1 = camera_get_view_x(view_camera[0]);
	var w = camera_get_view_width(view_camera[0]);
	var x2 = x1 + w;
	var center_w = x1 + w/2;
		
	var y1 = camera_get_view_y(view_camera[0]);
	var h = camera_get_view_height(view_camera[0]);
	var y2 = y1 + h;
	var center_h = y1 + h/2;

	var qtd = h * 0.15;
	value = lerp(value, 1, 0.01);

	//Dark on full screen
	draw_set_alpha(value - 0.3);
	draw_rectangle(x1, y1, x2, y2, false);

	draw_set_color(c_black);
	//Draw top black lines
	draw_rectangle(x1, y1, x2, y1 + qtd * value, false);
	
	//Draw bot black lines
	draw_rectangle(x1, y2, x2, y2 - qtd * value, false);
	
	draw_set_alpha(1);
	draw_set_color(-1);
	
	//Writing Game Over
	define_align_font(1, 1, fnt_game_over);
	
	//Shadow
	draw_set_color(c_red);
	draw_text(center_w + 1, center_h + 1, _string);	
	//Text
	draw_set_color(c_white);
	draw_text(center_w, center_h, _string);	
	
	//Writing Description
	define_align_font(1, 1, -1);
	draw_set_color(c_black);
	draw_text(center_w + 10, center_h + 50, _desc);
	
	draw_set_color(c_white);
	draw_text(center_w + 11, center_h + 51, _desc);
	
	define_align_font(-1, -1, -1);	
}

function draw_power_screen(_string, _desc){
	define_align_font(fa_middle, fa_center, fnt_game_over);
	
	draw_sprite_ext(spr_pixel, 0, 1000, 0, 920, 400, 0, c_black, 0.5);
	
	draw_set_color(c_red);
	draw_text(1501, 51, _string);
	
	draw_set_color(c_white);
	draw_text(1500, 50, _string);	
	
	draw_set_color(c_black);
	draw_text(1501, 251, _desc);
	
	draw_set_color(c_white);
	draw_text(1500, 250, _desc);
	
	define_align_font(-1, -1, -1);	
}

#endregion

#region BOSS HUD
function draw_boss_hud(_string){
	if(global.bossBattle){
		define_align_font(1,  1, fnt_boss);
	
		//Shadow
		draw_set_color(c_red);
		draw_text(healthbar_x+210, healthbar_y-290, _string);	
		//Text
		draw_set_color(c_white);
		draw_text(healthbar_x+211, healthbar_y-291, _string);	

		draw_sprite(spr_boss_healthBg, 0, healthbar_x-5, healthbar_y-265);
		draw_sprite_stretched_ext(spr_boss_health, 0, healthbar_x, healthbar_y-260, (life/max_life) * healthbar_width, healthbar_height, -1, 0.5);

		define_align_font(-1, -1, -1);	
	}
}
#endregion

function wave(_val0, _val1, _val2, _val3){
	var A4 = (_val1 - _val0) * 0.5;
	
	return _val0 + A4 + sin((((current_time * 0.002) + _val2 * _val3) / _val2)) * (pi*2) * A4;
}