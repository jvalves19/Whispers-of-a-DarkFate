if(sense && sense_draw){	
	define_align_font(fa_middle, fa_center, fnt_game_over);
	
	draw_sprite_ext(spr_pixel, 0, 1000, 0, 920, 100, 0, c_black, 0.5);
	draw_text(1500, 50, "E ou X para Interagir");
	
	define_align_font(-1, -1, -1);
}