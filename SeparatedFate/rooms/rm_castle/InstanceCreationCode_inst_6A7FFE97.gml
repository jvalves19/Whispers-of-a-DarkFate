t_scene_info = [

	[cutscene_moveCharacter, obj_player, 224, 384, false, 1],
	[cutscene_instance_create, 224, 380, "Instances", obj_teleporte],
	[cutscene_instance_destroy, obj_player],
	
	[cutscene_wait, 1],
	
	[cutscene_instance_create, 464, 384, "Instances", obj_teleporte],
	[cutscene_instance_create, 464, 384, "Instances", obj_player],
	
	[cutscene_wait, 1],
	[cutscene_moveCharacter, obj_player, 128, 0, true, 4],
];