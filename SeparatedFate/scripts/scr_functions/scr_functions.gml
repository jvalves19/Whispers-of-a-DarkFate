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
	draw_set_font(fnt_game_over);
	define_align(1,  1);
	
	//Shadow
	draw_set_color(c_red);
	draw_text(center_w + 1, center_h + 1, _string);	
	//Text
	draw_set_color(c_white);
	draw_text(center_w, center_h, _string);	
	
	draw_set_font(-1);
	draw_set_color(c_black);
	draw_text(center_w + 10, center_h + 50, _desc);
	
	draw_set_color(c_white);
	draw_text(center_w + 11, center_h + 51, _desc);
	
	define_align(-1, -1);	
	draw_set_font(-1);
}

function draw_power_screen(_string, _desc){
	//Get camera info
	var x1 = camera_get_view_x(view_camera[0]);
	var w = camera_get_view_width(view_camera[0]);
	var x2 = x1 + w;
	var center_w = x1 + w/2;
		
	var y1 = camera_get_view_y(view_camera[0]);
	var h = camera_get_view_height(view_camera[0]);
	var y2 = y1 + h;
	var center_h = y1 + h/2;

	var qtd = h * 1;
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
	draw_set_font(fnt_dungeon);
	define_align(1,  1);
	
	//Shadow
	draw_set_color(c_red);
	draw_text(center_w + 1, center_h + 1, _string);	
	//Text
	draw_set_color(c_white);
	draw_text(center_w, center_h, _string);	
	
	draw_set_font(-1);
	draw_set_color(c_black);
	draw_text(center_w + 10, center_h + 50, _desc);
	
	draw_set_color(c_white);
	draw_text(center_w + 11, center_h + 51, _desc);
	
	define_align(-1, -1);	
	draw_set_font(-1);
}

#endregion

#region BOSS HUD
function draw_boss_hud(_string){
 	draw_set_font(fnt_boss);
	define_align(1,  1);
	
	//Shadow
	draw_set_color(c_red);
	draw_text(healthbar_x+210, healthbar_y-290, _string);	
	//Text
	draw_set_color(c_white);
	draw_text(healthbar_x+211, healthbar_y-291, _string);	

	draw_sprite(spr_boss_healthBg, 0, healthbar_x-5, healthbar_y-265);
	draw_sprite_stretched_ext(spr_boss_health, 0, healthbar_x, healthbar_y-260, (life/max_life) * healthbar_width, healthbar_height, -1, 0.5);


	define_align(-1, -1);	
	draw_set_font(-1);
}

#endregion