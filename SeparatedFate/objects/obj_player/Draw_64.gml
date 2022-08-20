/// @description Insert description here
// You can write your code in this editor


draw_sprite(spr_healthBg, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_health, 0, healthbar_x, healthbar_y, (life/max_life) * healthbar_width, healthbar_height);

draw_sprite(spr_healthBg, 0, healthbar_x, healthbar_y + 80);
draw_sprite_stretched(spr_aura, 0, healthbar_x, healthbar_y + 80, (aura/max_aura) * healthbar_width, healthbar_height);