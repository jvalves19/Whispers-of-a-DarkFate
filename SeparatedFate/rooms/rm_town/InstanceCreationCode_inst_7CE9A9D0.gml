var _dialogue = obj_dialogo
	
t_scene_info = [
	/*
	[cutscene_moveCharacter, obj_player, 0, 0, true, 1],
	[cutscene_instance_create, 132, 380, "Instances", obj_teleporte],
	[cutscene_instance_destroy, obj_player],
	
	[cutscene_wait, 1],
	
	[cutscene_instance_create, 464, 384, "Instances", obj_teleporte],
	[cutscene_instance_create, 464, 380, "Instances", obj_player],
	
	*/
	[cutscene_moveCharacter, obj_player, 500, 0, true, 1],
	
	[cutscene_instance_create, x, y, "Dialogue", _dialogue],
	[cutscene_changeVariable, _dialogue, "npc_nome", "Ílkael"],
];