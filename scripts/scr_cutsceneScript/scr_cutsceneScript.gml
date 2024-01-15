// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

function cutsceneScript(_sceneNumber){	
	var _dialogue = obj_dialogo
	
	#region First Scene
	if(room == rm_graveyard1 && _sceneNumber == -1){
		global.scene_info = [
			[cutscene_changeVariable, obj_player, "obj_player.state", "idle"],
			[cutscene_moveCharacter, obj_player, 90, 0, true, 4],
	
			[cutscene_instance_create, x, y, "Dialogue", _dialogue],
			[cutscene_changeVariable, _dialogue, "npc_nome", "Kassius"],
			[cutscene_wait, 1],
			[cutscene_changeGVariable, "sceneNumber", 0]
		];	
	
		if(!instance_exists(obj_cutscene) && _sceneNumber == -1) create_cutscene(global.scene_info);
		if(_sceneNumber != -1) instance_destroy(obj_cutscene);
	}
	#endregion
	
	#region MORRA SEU DEMONION
	if(room == rm_boss2 && !global.destroyed[2]){
		global.scene_info = [
			[cutscene_moveCharacter, obj_player, 140, 0, true, 4],
	
			[cutscene_instance_create, x, y, "Dialogue", _dialogue],
			[cutscene_changeVariable, _dialogue, "npc_nome", "Kassius"],
	
			[cutscene_wait, 1],
		
			[cutscene_stopSound, msc_bossBattle2],
			[cutscene_playSound, msc_bossBattle2, 1, true],
			[cutscene_soundGain, msc_bossBattle2, 1, 0],
		
			[cutscene_changeGVariable, "sceneNumber", 1]
		];
	
		if(!instance_exists(obj_cutscene) && global.sceneNumber == 0) create_cutscene(global.scene_info);
		if(global.sceneNumber != 0){
			instance_destroy(obj_cutscene);
			if(!instance_exists(obj_dialogo)) global.bossBattle = true;
		}
	}
	#endregion
	
	#region Questo do Barqueiro
	if(room == rm_forest && _sceneNumber == 5){
		global.scene_info = [
			[cutscene_instance_create, 184, 344, "Instances", obj_capitain],
			[cutscene_moveCharacter, obj_player, 140, 0, true, 4],
	
			[cutscene_instance_create, x, y, "Dialogue", _dialogue],
			[cutscene_changeVariable, _dialogue, "npc_nome", "Capitão"],
			
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
			[cutscene_instance_create, x, y, "Dialogue", _dialogue],
			[cutscene_changeVariable, _dialogue, "npc_nome", "Capitão"],
			
			[cutscene_wait, 1],
			
			[cutscene_changeGVariable, "questStatus", false],
			[cutscene_changeGVariable, "sceneNumber", -1],
		];
	
		if(!instance_exists(obj_cutscene) && _sceneNumber == 6) create_cutscene(global.scene_info);
		if(_sceneNumber != 6) instance_destroy(obj_cutscene);					
	}
	#endregion
}