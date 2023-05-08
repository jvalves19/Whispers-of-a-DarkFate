/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(!instance_exists(obj_cutscene)){
	if(place_meeting(x, y, obj_player)){
		create_cutscene(t_scene_info);
	
		instance_destroy();
	}
}