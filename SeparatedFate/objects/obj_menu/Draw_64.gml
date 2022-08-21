/// @description Insert description here
// You can write your code in this editor

var x1 = camera_get_view_x(view_camera[0]);
var w = camera_get_view_width(view_camera[0]);
var center_w = x1 + w;
		
var y1 = camera_get_view_y(view_camera[0]);
var h = camera_get_view_height(view_camera[0]);
var center_h = y1 + h/2;
	
	
//Writing Game Over
draw_set_font(fnt_menu);
define_align(1,  1);
	
//Shadow
draw_set_color(c_red);
draw_text(center_w + 100, center_h + 100, "Separated by the Fate");	
//Text
draw_set_color(c_white);
draw_text(center_w + 101, center_h + 101, "Separated by the Fate");	
	
draw_set_font(-1);

draw_menu();

	
//Writing Game Over
draw_set_font(fnt_game_over);
define_align(1,  1);
	
//Shadow
draw_set_color(c_red);
draw_text(center_w + 120, center_h + 1190, "Press F to FullScreen Mode");	
//Text
draw_set_color(c_white);
draw_text(center_w + 121, center_h + 1191, "Press F to FullScreen Mode");	
	
draw_set_font(-1);