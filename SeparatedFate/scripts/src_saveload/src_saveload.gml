function saveGame(_slot){
	ini_open("savedata.ini");
	
	ini_write_real(_slot, "roomID", global.actRoom);
	ini_write_real(_slot, "xPos", global.actPlayer.x);
	ini_write_real(_slot, "yPos", global.actPlayer.y);
	
	//PLAYER STATUS
	ini_write_real(_slot, "Player Life", global.pMaxLife);
	ini_write_real(_slot, "Player Aura", global.pMaxAura);
	ini_write_real(_slot, "Player Atk", global.pAtk);
	
	//SAVE BOSSES
	ini_write_real(_slot, "boss", global.destroyed[1]);	
	ini_write_real(_slot, "boss2", global.destroyed[2]);		
	
	//SAVE POWERS
	ini_write_real(_slot, "Spell", global.currentSpell);
	ini_write_real(_slot, "Spell0", global.controllSpells[0]);
	ini_write_real(_slot, "Spell1", global.controllSpells[1]);
	ini_write_real(_slot, "Spell2", global.controllSpells[2]);
	
	ini_write_real(_slot, "Power", global.currentPower);
	ini_write_real(_slot, "Powers", global.controllPowers[0]);	
	
	//INVENTORY AND KEYS SYSTEM
	ini_write_real(_slot, "Keys1", global.key[1]);
	ini_write_real(_slot, "Keys2", global.key[2]);
	ini_write_real(_slot, "Keys3", global.key[3]);
	ini_write_real(_slot, "Keys4", global.key[4]);
	ini_write_real(_slot, "Keys5", global.key[5]);
	
	ini_write_real(_slot, "Dialogue", global.stateDialogue);
	
	//DEBUG
	show_debug_message(global.pMaxLife);
	show_debug_message(global.pAtk);
	show_debug_message(global.destroyed[1]);
	show_debug_message(global.destroyed[2]);

	ini_close();
}

function loadGame(_slot){
	var roomID;
	
	ini_open("savedata.ini");
	
	roomID = ini_read_real(_slot, "roomID", 0);
	global.actPlayer.x  = ini_read_real(_slot, "xPos", 0);
	global.actPlayer.y= ini_read_real(_slot, "yPos", 0);
	
	global.pMaxLife = ini_read_real(_slot, "Player Life", 0);
	global.pMaxAura = ini_read_real(_slot, "Player Aura", 0);
	global.pAtk = ini_read_real(_slot, "Player Atk", 0);
	
	
	global.actPlayer.life = global.pMaxLife;
	global.actPlayer.aura = global.pMaxAura;	
	global.actPlayer.atk = global.pAtk;
	
	//LOAD BOSSES
	global.destroyed[1] = ini_read_real(_slot, "boss", 0);
	global.destroyed[2] = ini_read_real(_slot, "boss2", 0);
	
	//LOAD POWERS
	global.currentSpell = ini_read_real(_slot, "Spell", 0);
	global.controllSpells[0] = ini_read_real(_slot, "Spell0", 0);
	global.controllSpells[1] = ini_read_real(_slot, "Spell1", 0);
	global.controllSpells[2] = ini_read_real(_slot, "Spell2", 0);
	
	global.currentPower = ini_read_real(_slot, "Power", 0);
	global.controllPowers[0] = ini_read_real(_slot, "Powers", 0);
	
	//INVENTORY AND KEYS SYSTEM
	global.key[1] = ini_read_real(_slot, "Keys1", 0);
	global.key[2] = ini_read_real(_slot, "Keys2", 0);
	global.key[3] = ini_read_real(_slot, "Keys3", 0);
	global.key[4] = ini_read_real(_slot, "Keys4", 0);
	global.key[5] = ini_read_real(_slot, "Keys5", 0);
	
	global.stateDialogue = ini_read_real(_slot, "Dialogue", 0);
	
	show_debug_message(global.destroyed[1]);
	show_debug_message(global.destroyed[2]);
	
	show_debug_message(global.pMaxLife);
	show_debug_message(global.pAtk);
	
	ini_close();
	room_goto(roomID);
}