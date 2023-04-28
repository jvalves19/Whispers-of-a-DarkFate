/// @description Insert description here
// You can write your code in this editor

if(pause){
	var x1 = camera_get_view_x(view_camera[0]);
	var w = camera_get_view_width(view_camera[0]);
	var center_w = x1 + w/2;
		
	var y1 = camera_get_view_y(view_camera[0]);
	var h = camera_get_view_height(view_camera[0]);
	var center_h = y1 + h/2;

	define_align_font(1,  1, fnt_game_over);
	
	draw_set_color(c_white);
	draw_text(center_w, center_h, "Game Pause");
	define_align_font(-1, -1, -1);	
	
	draw_menu(menus[pag]);
}
else{
	value = 0;
}