// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveGame(){
	ini_open("savedata.ini");
	
	ini_write_real("savegame", "roomID", global.actRoom);
	ini_write_real("savegame", "xPos", obj_player.x);
	ini_write_real("savegame", "yPos", obj_player.y);
	
	//PLAYER STATUS
	ini_write_real("savegame", "Player Life", global.pMaxLife);
	ini_write_real("savegame", "Player Aura", global.pMaxAura);
	ini_write_real("savegame", "Player Atk", global.pAtk);
	
	
	show_debug_message(global.pMaxLife);
	show_debug_message(global.pAtk);
	
	//SAVE BOSSES
	ini_write_real("savegame", "boss", global.destroyed[1]);	
	ini_write_real("savegame", "boss2", global.destroyed[2]);		
	//ini_write_real("savegame", "BossBattle", global.bossBattle);
	
	//SAVE POWERS
	ini_write_real("savegame", "Powers", global.controllPowers[0]);	
	
	//INVENTORY AND KEYS SYSTEM
	ini_write_real("savegame", "Dialogue", global.stateDialogue);
	
	show_debug_message(global.destroyed[1]);
	show_debug_message(global.destroyed[2]);

	
	ini_close();
}

function loadGame(){
	var roomID;
	
	ini_open("savedata.ini");
	
	roomID = ini_read_real("savegame", "roomID", 0);
	obj_player.x  = ini_read_real("savegame", "xPos", 0);
	obj_player.y= ini_read_real("savegame", "yPos", 0);
	
	global.pMaxLife = ini_read_real("savegame", "Player Life", 0);
	global.pMaxAura = ini_read_real("savegame", "Player Aura", 0);
	global.pAtk = ini_read_real("savegame", "Player Atk", 0);
	
	
	obj_player.life = global.pMaxLife;
	obj_player.aura = global.pMaxAura;	
	obj_player.atk = global.pAtk;
	
	//LOAD BOSSES
	global.destroyed[1] = ini_read_real("savegame", "boss", 0);
	global.destroyed[2] = ini_read_real("savegame", "boss2", 0);
	//global.bossBattle = ini_read_real("savegame", "BossBattle", 0);
	
	//LOAD POWERS
	global.controllPowers[0] = ini_read_real("savegame", "Powers", 0);
	
	//INVENTORY AND KEYS SYSTEM
	global.stateDialogue = ini_read_real("savegame", "Dialogue", 0);
	
	show_debug_message(global.destroyed[1]);
	show_debug_message(global.destroyed[2]);
	
	show_debug_message(global.pMaxLife);
	show_debug_message(global.pAtk);
	
	ini_close();
	room_goto(roomID);
}

/*
function saveGame2(){
	var _saveData = array_create(0);
	
	with(all){
		var _saveEntity = {
			obj : object_get_name(object_index),
			room : room,
			y : y,
			x : x,
			image_index : image_index,
			image_blend : image_blend,
		}
		array_push(_saveData, _saveEntity);
		
	}
	
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "savegame.save");
	buffer_delete(_buffer);
	
	show_debug_message("Game Saved" + _string);
}

function loadGame2(){
	with(all) instance_destroy();
	
	if(file_exists("savegame.save")){
		var _buffer = buffer_load("savegame.save");
		var _string = buffer_read(_buffer, buffer_string);
		
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_string);
		
		while(array_length(_loadData) > 0){
			var _loadEntity = array_pop(_loadData);
			
			with(instance_create_layer(0, 0, layer, asset_get_index(_loadEntity.obj))){
				x = _loadEntity.x;
				y = _loadEntity.y;
				room = _loadEntity.room;
				image_blend = _loadEntity.image_blend;
				image_index = _loadEntity.image_index;
			}
		}
		show_debug_message("game Loaded" + _string);
		
	}

}
*/