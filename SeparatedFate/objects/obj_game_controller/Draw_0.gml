/// @description Insert description here
// You can write your code in this editor

//Game Over Screen
if(game_over){
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
	draw_text(center_w + 1, center_h + 1, "Game Over");	
	//Text
	draw_set_color(c_white);
	draw_text(center_w, center_h, "Game Over");	
	
	draw_set_font(-1);
	draw_set_color(c_black);
	draw_text(center_w + 10, center_h + 50, "Press ENTER to restart");
	
	draw_set_color(c_white);
	draw_text(center_w + 11, center_h + 51, "Press ENTER to restart");
	
	define_align(-1, -1);	
	draw_set_font(-1);
}
else{
	value = 0;
}

if(bossDead){
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
	draw_text(center_w + 1, center_h + 1, "Great Beast Killed");	
	//Text
	draw_set_color(c_white);
	draw_text(center_w, center_h, "Great Beast Killed");	
	
	draw_set_font(-1);
	draw_set_color(c_black);
	draw_text(center_w + 10, center_h + 50, "Press ENTER to Continue");
	
	draw_set_color(c_white);
	draw_text(center_w + 11, center_h + 51, "Press ENTER to Continue");
	
	define_align(-1, -1);	
	draw_set_font(-1);
}
else{
	value = 0;
}