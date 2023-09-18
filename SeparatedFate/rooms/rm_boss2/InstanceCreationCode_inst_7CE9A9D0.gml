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
	[cutscene_moveCharacter, obj_player, 140, 0, true, 1],
	
	[cutscene_instance_create, x, y, "Dialogue", _dialogue],
	[cutscene_changeVariable, _dialogue, "npc_name", "Kassius"],
	
	[cutscene_wait, 1],
	
	[cutscene_changeVariable, obj_samurai, "bossBattle", true],
	[cutscene_stopSound, msc_bossBattle2],
	[cutscene_playSound, msc_bossBattle2, 1, true],
	[cutscene_soundGain, msc_bossBattle2, 1, 0],
];