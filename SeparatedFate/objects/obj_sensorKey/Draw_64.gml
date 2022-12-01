if(sense && global.key[0]){	
	define_align(fa_middle, fa_center);
	draw_set_font(fnt_game_over)
	
	draw_sprite_ext(spr_pixel, 0, 1000, 0, 920, 100, 0, c_black, 0.5);
	draw_text(1500, 50, "press E to Action");
	
	draw_set_font(-1);
	define_align(-1, -1);
}
if(sense && !global.key[0]){
	define_align(fa_middle, fa_center);
	draw_set_font(fnt_game_over)
	
	draw_sprite_ext(spr_pixel, 0, 1000, 0, 920, 100, 0, c_black, 0.5);
	draw_text(1500, 50, "Needs a Key");
	
	draw_set_font(-1);
	define_align(-1, -1);
}