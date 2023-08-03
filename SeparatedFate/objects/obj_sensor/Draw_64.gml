if(senseDraw){	
	define_align_font(fa_middle, fa_center, fnt_game_over);
	
	draw_sprite_ext(spr_pixel, 0, 1100, 0, 920, 100, 0, c_black, 0.5);
	
	define_align_font(fa_middle, fa_center, fnt_indicators);
	draw_text(1500, 50, translateText("actionButton"));
	
	define_align_font(-1, -1, -1);
}