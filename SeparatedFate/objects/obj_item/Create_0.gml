/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

image_speed = 0;
image_index = irandom(sprite_get_number(spr_items16x16) - 1);

maxQuantity = global.a_items[image_index, e_item_stats.maxStack] - 1;

quantity = irandom(maxQuantity) + 1;

canBePicked = true;