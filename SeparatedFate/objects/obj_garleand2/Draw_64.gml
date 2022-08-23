/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_dungeon);
define_align(1,  1);
	
//Shadow
draw_set_color(c_red);
draw_text(healthbar_x+200, healthbar_y-20, "Garleand, the Pure");	
//Text
draw_set_color(c_white);
draw_text(healthbar_x+201, healthbar_y-21, "Garleand, the Pure");	

draw_sprite(spr_boss_healthBg, 0, healthbar_x-5, healthbar_y-5);
draw_sprite_stretched_ext(spr_boss_health, 0, healthbar_x, healthbar_y, (life/max_life) * healthbar_width, healthbar_height, -1, 0.5);


define_align(-1, -1);	
draw_set_font(-1);