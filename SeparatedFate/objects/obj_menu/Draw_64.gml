/// @description Insert description here
// You can write your code in this editor

draw_menu();

var x1 = camera_get_view_x(view_camera[0]);
var w = camera_get_view_width(view_camera[0]);
var center_w = x1 + w;
		
var y1 = camera_get_view_y(view_camera[0]);
var h = camera_get_view_height(view_camera[0]);
var center_h = y1 + h/2;
	
draw_set_font(fnt_game_over);
define_align(1,  1);
	
//Shadow
draw_set_color(c_red);
draw_text(center_w + 120, center_h + 1190, "Press F to FullScreen Mode");	
//Text
draw_set_color(c_white);
draw_text(center_w + 121, center_h + 1191, "Press F to FullScreen Mode");	
	
draw_set_font(-1);