if(senseDraw){	
	define_align(fa_middle, fa_center);
	draw_set_font(fnt_game_over)
	
	draw_sprite_ext(spr_pixel, 0, 1000, 0, 920, 100, 0, c_black, 0.5);
	draw_text(1500, 50, "E ou △ para Interagir");
	
	draw_set_font(-1);
	define_align(-1, -1);
}