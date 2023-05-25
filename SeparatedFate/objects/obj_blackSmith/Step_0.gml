/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

switch(state){
	case "idle":
		if(sprite_index != spr_blackSmithIdle){
			sprite_index = spr_blackSmithIdle;
			image_index = 0;
		}
	break;
	
	case "dialogue":
		if(sprite_index != spr_blackSmithStand){
			sprite_index = spr_blackSmithStand;
			image_index = 0;
		}
	break;
	
	case "work":
		if(sprite_index != spr_blackSmithWork){
			sprite_index = spr_blackSmithWork;
			image_index = 0;
		}
	break;
}