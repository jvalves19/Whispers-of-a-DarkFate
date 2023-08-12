/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if(instance_exists(obj_player)){
	dist = point_distance(x, y, obj_player.x, obj_player.y);
	dir = point_direction(x, y, obj_player.x, obj_player.y);
}

if(stagger > 0) stagger --;