/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_boss_healthBg, 0, healthbar_x-5, healthbar_y-5);
draw_sprite_stretched_ext(spr_boss_health, 0, healthbar_x, healthbar_y, (life/max_life) * healthbar_width, healthbar_height, -1, 0.5);