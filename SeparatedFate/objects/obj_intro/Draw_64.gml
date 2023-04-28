draw_sprite_ext(spr_pixel, 0, 0, 0, 1920, 200, 0, c_black, 1);
draw_sprite_ext(spr_pixel, 0, 0, 900, 1920, 200, 0, c_black, 1);

draw_set_color(c_white);
define_align_font(fa_top, fa_center, fnt_dungeon)
draw_text(760, 920, print);

if(holdspace > 0) draw_text(1500, 50, "Segure ESPAÇO ou O "); 

draw_sprite_ext(spr_pixel, 0, 0, 0, 1920, 1080, 0, c_black, a);