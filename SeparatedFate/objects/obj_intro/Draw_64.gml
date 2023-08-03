draw_sprite_ext(spr_pixel, 0, 0, 0, 1920, 200, 0, c_black, 1);
draw_sprite_ext(spr_pixel, 0, 0, 900, 1920, 200, 0, c_black, 1);

draw_set_color(c_white);
define_align_font(fa_top, fa_center, fnt_dungeon)
draw_text(800, 920, print);

if(holdspace > 0){
	draw_set_alpha(wave(0.2, 0.8, 1, 0));
	define_align_font(fa_top, fa_center, fnt_indicators)
	draw_text(1500, 50, translateText("skipCutscene"));
	
	draw_set_alpha(1);
}

draw_sprite_ext(spr_pixel, 0, 0, 0, 1920, 1080, 0, c_black, a);