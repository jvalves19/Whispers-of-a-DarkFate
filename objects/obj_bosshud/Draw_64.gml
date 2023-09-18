/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_dungeon);
define_align(1,  1);
	
//Shadow
draw_set_color(c_red);
draw_text(room_width + 100, room_height - 100, text);	
//Text
draw_set_color(c_white);
draw_text(room_width + 100, room_height - 100, text);	

draw_sprite(spr_boss_healthBg, 0, room_width + 100, room_height - 100);
draw_sprite_stretched_ext(spr_boss_health, 0, room_width + 100, room_height - 100, (obj_garleand.life/obj_garleand.max_life) * room_width, room_height, -1, 0.5);


define_align(-1, -1);	
draw_set_font(-1);