/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(place_meeting(x, y, global.actPlayer)){
	global.currentItem = image_index;
	
	if(image_index == 0){
		global.lifePotionQtd += 1;
	}
	if(image_index == 1){
		global.auraPotionQtd += 1;
	}
	
	instance_destroy();
}