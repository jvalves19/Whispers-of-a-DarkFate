// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

function cutscene_script(_sceneNumber){	
	
	
	#region First Scene
	if(room == rm_graveyard1 && _sceneNumber == -1){
		
		global.scene_info = [
			[cutscene_changeVariable, obj_player, "obj_player.state", "idle"],
			[cutscene_moveCharacter, obj_player, 90, 0, true, 4],
	
			[cutscene_instance_create, x, y, "Dialogue", obj_dialogo],
			[cutscene_changeVariable, obj_dialogo, "npc_name", "Kassius"],
			[cutscene_wait, 1],
			[cutscene_changeGVariable, "sceneNumber", 0]
		];	
	
		if(!instance_exists(obj_cutscene) && _sceneNumber == -1) create_cutscene(global.scene_info);
		if(_sceneNumber != -1) instance_destroy(obj_cutscene);
	}
	#endregion
	
	
	
	#region Questo do Barqueiro
	if(room == rm_forest && _sceneNumber == 5){
		
		global.scene_info = [
			[cutscene_instance_create, 184, 344, "Instances", obj_capitain],
			[cutscene_moveCharacter, obj_player, 140, 0, true, 4],
	
			[cutscene_instance_create, x, y, "Dialogue", obj_dialogo],
			[cutscene_changeVariable, obj_dialogo, "npc_name", "Capitão"],
			
			[cutscene_wait, 1],
			
			[cutscene_changeGVariable, "questStatus", true],
			[cutscene_changeGVariable, "sceneNumber", -1],
		];
	
		if(!instance_exists(obj_cutscene) && _sceneNumber == 5) create_cutscene(global.scene_info);
		if(_sceneNumber != 5) instance_destroy(obj_cutscene);
		
	}
	
	if(room == rm_forest && _sceneNumber == 6){
		global.scene_info = [
			[cutscene_moveCharacter, obj_capitain, -150, 0, true, 4],
			[cutscene_changeGVariable, "capitainDialogue", 3],
			[cutscene_instance_create, x, y, "Dialogue", obj_dialogo],
			[cutscene_changeVariable, obj_dialogo, "npc_name", "Capitão"],
			
			[cutscene_wait, 1],
			
			[cutscene_changeGVariable, "questStatus", false],
			[cutscene_changeGVariable, "sceneNumber", -1],
		];
	
		if(!instance_exists(obj_cutscene) && _sceneNumber == 6) create_cutscene(global.scene_info);
		if(_sceneNumber != 6) instance_destroy(obj_cutscene);			
		
	}
	#endregion
}