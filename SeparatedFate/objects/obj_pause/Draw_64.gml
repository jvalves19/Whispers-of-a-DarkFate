/// @description Insert description here
// You can write your code in this editor

if(pause){
	var x1 = camera_get_view_x(view_camera[1]);
	var w = camera_get_view_width(view_camera[1]);
	var center_w = x1 + w/2;
		
	var y1 = camera_get_view_y(view_camera[1]);
	var h = camera_get_view_height(view_camera[1]);
	var center_h = y1 + h/2;

	define_align_font(1,  1, fnt_game_over);
	
	draw_set_color(c_white);
	draw_text(center_w, center_h - 50, translateText("pauseMsg"));
	define_align_font(-1, -1, -1);	
	
	draw_menu(menus[pag]);
	
	draw_sprite_stretched(spr_gameKeys, 0, (center_w / 2) + 800, center_h / 2 + 150, 1000, 600);
	
} else{
	value = 0;
}

