/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(place_meeting(x, y, global.actPlayer)){
	global.currentItem = image_index;
	
	if(image_index == 0){
		if(global.lifePotionQtd+1 <= global.potionStash){
			global.lifePotionQtd += 1;
			instance_destroy();
		}
		else {}
	}
	if(image_index == 1){
		if(global.auraPotionQtd+1 <= global.potionStash){
			global.auraPotionQtd += 1;
			instance_destroy();
		}
		else  {}
	}
	if(image_index == 2){
		if(global.damagePotionQtd+1 <= global.potionStash/2){
			global.damagePotionQtd += 1;
			instance_destroy();
		}
		else {}
	}
	if(image_index == 3){
		if(global.spellPotionQtd+1 <= global.potionStash/2){
			global.spellPotionQtd += 1;
			instance_destroy();
		}
		else {}
	}
	
}