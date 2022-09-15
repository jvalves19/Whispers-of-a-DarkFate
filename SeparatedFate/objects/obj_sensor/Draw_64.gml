/// @description Insert description here
// You can write your code in this editor

if(sense){	
	var x1 = room_width/2;	
	var y1 = room_height/2;


	define_align(fa_middle, fa_center);
	draw_set_font(fnt_game_over);
	
	draw_set_color(c_white);
	draw_text(x1, y1, "Press E to Action");
	
	
	define_align(-1, -1);
	draw_set_font(-1);
	
}else{
	value = 0;
}