/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(!canBePicked){
	x1 = x;
	y1 = y;
	x2 = x + sprite_width/sprite_width;
	y2 = y - sprite_height;
	
	if(collision_rectangle(x1, y1, x2, y2, obj_player, false, false)){
	
	} else {
		canBePicked = true;
	}
}