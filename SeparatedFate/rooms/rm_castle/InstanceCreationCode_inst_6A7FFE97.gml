t_scene_info = [

	[cutscene_moveCharacter, obj_player, 224, 384, false, 1],
	[cutscene_instance_create, 224, 384, "Instances", obj_fire],
	[cutscene_instance_destroy, obj_player],
	
	[cutscene_wait, 1],
	
	[cutscene_instance_create, 264, 384, "Instances", obj_fire],
	[cutscene_instance_create, 264, 384, "Instances", obj_player],
	
	[cutscene_wait, 1],
	[cutscene_moveCharacter, obj_player, -16, 0, true, 1],
];