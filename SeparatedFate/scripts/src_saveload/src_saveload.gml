function saveGame(){
	ini_open("savedata.ini");
	
	ini_write_real("savegame", "roomID", global.actRoom);
	ini_write_real("savegame", "xPos", obj_player.x);
	ini_write_real("savegame", "yPos", obj_player.y);
	
	//PLAYER STATUS
	ini_write_real("savegame", "Player Life", global.pMaxLife);
	ini_write_real("savegame", "Player Aura", global.pMaxAura);
	ini_write_real("savegame", "Player Atk", global.pAtk);
	
	//SAVE BOSSES
	ini_write_real("savegame", "boss", global.destroyed[1]);	
	ini_write_real("savegame", "boss2", global.destroyed[2]);		
	
	//SAVE POWERS
	ini_write_real("savegame", "Spell", global.currentSpell);
	ini_write_real("savegame", "Spell0", global.controllSpells[0]);
	ini_write_real("savegame", "Spell1", global.controllSpells[1]);
	ini_write_real("savegame", "Spell2", global.controllSpells[2]);
	
	ini_write_real("savegame", "Power", global.currentPower);
	ini_write_real("savegame", "Powers", global.controllPowers[0]);	
	
	//INVENTORY AND KEYS SYSTEM
	ini_write_real("savegame", "Keys1", global.key[1]);
	ini_write_real("savegame", "Keys2", global.key[2]);
	ini_write_real("savegame", "Keys3", global.key[3]);
	ini_write_real("savegame", "Keys4", global.key[4]);
	ini_write_real("savegame", "Keys5", global.key[5]);
	
	ini_write_real("savegame", "Dialogue", global.stateDialogue);
	
	//DEBUG
	show_debug_message(global.pMaxLife);
	show_debug_message(global.pAtk);
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
	
	//LOAD POWERS
	global.currentSpell = ini_read_real("savegame", "Spell", 0);
	global.controllSpells[0] = ini_read_real("savegame", "Spell0", 0);
	global.controllSpells[1] = ini_read_real("savegame", "Spell1", 0);
	global.controllSpells[2] = ini_read_real("savegame", "Spell2", 0);
	
	global.currentPower = ini_read_real("savegame", "Power", 0);
	global.controllPowers[0] = ini_read_real("savegame", "Powers", 0);
	
	//INVENTORY AND KEYS SYSTEM
	global.key[1] = ini_read_real("savegame", "Keys1", 0);
	global.key[2] = ini_read_real("savegame", "Keys2", 0);
	global.key[3] = ini_read_real("savegame", "Keys3", 0);
	global.key[4] = ini_read_real("savegame", "Keys4", 0);
	global.key[5] = ini_read_real("savegame", "Keys5", 0);
	
	global.stateDialogue = ini_read_real("savegame", "Dialogue", 0);
	
	show_debug_message(global.destroyed[1]);
	show_debug_message(global.destroyed[2]);
	
	show_debug_message(global.pMaxLife);
	show_debug_message(global.pAtk);
	
	ini_close();
	room_goto(roomID);
}