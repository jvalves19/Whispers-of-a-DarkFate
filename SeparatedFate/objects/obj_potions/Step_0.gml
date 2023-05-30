/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(place_meeting(x, y, global.actPlayer)){
	global.currentItem = image_index;
	
	if(image_index == 0){
		if(global.lifePotionQtd+1 <= 10){
			global.lifePotionQtd += 1;
			instance_destroy();
		}
		else {}
	}
	if(image_index == 1){
		if(global.auraPotionQtd+1 <= 10){
			global.auraPotionQtd += 1;
			instance_destroy();
		}
		else  {}
	}
	if(image_index == 2){
		if(global.damagePotionQtd+1 <= 5){
			global.damagePotionQtd += 1;
			instance_destroy();
		}
		else {}
	}
	if(image_index == 3){
		if(global.spellPotionQtd+1 <= 5){
			global.spellPotionQtd += 1;
			instance_destroy();
		}
		else {}
	}
	
}