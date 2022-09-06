/// @description Insert description here
// You can write your code in this editor

if(sense){	
	var x1 = xstart + 200;
	var w = camera_get_view_width(view_camera[0]);
	var center_w = x1 + w/2;
		
	var y1 = ystart + 500;
	var h = camera_get_view_height(view_camera[0]);
	var center_h = y1 + h/2;

	draw_set_font(fnt_game_over);
	define_align(1,  1);
	
	draw_set_color(c_white);
	draw_text(center_w, center_h, "Press E to Save");
	
	define_align(-1, -1);	
	draw_set_font(-1);
}else{
	value = 0;
}