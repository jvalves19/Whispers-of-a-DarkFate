function saveGame(_slot){
	ini_open("savedata.ini");
	
	ini_write_real(_slot, "roomID", global.actRoom);
	ini_write_real(_slot, "xPos", global.actPlayer.x);
	ini_write_real(_slot, "yPos", global.actPlayer.y);
	
	//PLAYER STATUS
	ini_write_real(_slot, "Player Life", global.pMaxLife);
	ini_write_real(_slot, "Player Aura", global.pMaxAura);
	ini_write_real(_slot, "Player Atk", global.pAtk);
	
	//ini_write_string(_slot, "Inventory", global.a_inv);
	//global.strInventario = string(global.a_inv);
	
	//ini_write_string(_slot, "Inventory", global.strInventario)
	
	ini_write_real(_slot, "Player XP", global.playerXP);
	ini_write_real(_slot, "Player Level", global.playerLevel);
	ini_write_real(_slot, "Player MaxXp", global.playerMaxXP);
	ini_write_real(_slot, "Player MaxLevel", global.playerMaxLevel);
	ini_write_real(_slot, "Player Gold", global.playerGold);
	
	ini_write_real(_slot, "Damage Spell", global.pDmgSpell);
	ini_write_real(_slot, "Damage Fire", global.dmgFire);
	ini_write_real(_slot, "Damage Thunder", global.dmgThunder);
	ini_write_real(_slot, "Damage Holy", global.dmgHoly);
	
	//SAVE BOSSES
	ini_write_real(_slot, "Boss1", global.destroyed[1]);	
	ini_write_real(_slot, "Boss2", global.destroyed[2]);	
	ini_write_real(_slot, "Boss3", global.destroyed[3]);
	ini_write_real(_slot, "Boss4", global.destroyed[4]);
	ini_write_real(_slot, "Boss5", global.destroyed[5]);
	
	//SAVE POWERS
	ini_write_real(_slot, "Spell", global.currentSpell);
	ini_write_real(_slot, "Spell0", global.controllSpells[0]);
	ini_write_real(_slot, "Spell1", global.controllSpells[1]);
	ini_write_real(_slot, "Spell2", global.controllSpells[2]);
	
	ini_write_real(_slot, "Power", global.currentPower);
	ini_write_real(_slot, "Power0", global.controllPowers[0]);	
	ini_write_real(_slot, "Power1", global.controllPowers[1]);	
	ini_write_real(_slot, "Power2", global.controllPowers[2]);
	
	//INVENTORY AND KEYS SYSTEM
	ini_write_real(_slot, "Keys1", global.key[1]);
	ini_write_real(_slot, "Keys2", global.key[2]);
	ini_write_real(_slot, "Keys3", global.key[3]);
	ini_write_real(_slot, "Keys4", global.key[4]);
	ini_write_real(_slot, "Keys5", global.key[5]);
	
	ini_write_real(_slot, "Dialogue", global.stateDialogue);
	
	//DEBUG
	//show_debug_message(string(global.strInventario));
	show_debug_message("Vida Máxima: " + string(global.pMaxLife));
	show_debug_message("Aura Máxima: " + string(global.pMaxAura));
	show_debug_message("Dano Ataque: " + string(global.pAtk));
	show_debug_message("Dano Mágico: " + string(global.pDmgSpell));
	show_debug_message("Boss 1 Destruído: " + string(global.destroyed[1]));
	show_debug_message("Boss 2 Destruído: " + string(global.destroyed[2]));

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
	
	//global.a_inv = ini_read_string(_slot, "Inventory", 0);
	//global.strInventario = ini_read_string(_slot, "Inventory", 0);
	
	global.playerXP = ini_read_real(_slot, "Player XP", 0);
	global.playerLevel = ini_read_real(_slot, "Player Level", 0);
	global.playerMaxXP = ini_read_real(_slot, "Player MaxXp", 0);
	global.playerMaxLevel = ini_read_real(_slot, "Player MaxLevel", 0);
	global.playerGold = ini_read_real(_slot, "Player Gold", 0);
	
	global.pDmgSpell = ini_read_real(_slot, "Damage Spell", 0);
	global.dmgFire = ini_read_real(_slot, "Damage Fire", 0);
	global.dmgThunder = ini_read_real(_slot, "Damage Thunder", 0);
	global.dmgHoly = ini_read_real(_slot, "Damage Holy", 0);
	
	global.actPlayer.life = global.pMaxLife;
	global.actPlayer.aura = global.pMaxAura;	
	global.actPlayer.atk = global.pAtk;
	
	//LOAD BOSSES
	global.destroyed[1] = ini_read_real(_slot, "Boss1", 0);
	global.destroyed[2] = ini_read_real(_slot, "Boss2", 0);
	global.destroyed[3] = ini_read_real(_slot, "Boss3", 0);
	global.destroyed[4] = ini_read_real(_slot, "Boss4", 0);
	global.destroyed[5] = ini_read_real(_slot, "Boss5", 0);
	
	//LOAD POWERS
	global.currentSpell = ini_read_real(_slot, "Spell", 0);
	global.controllSpells[0] = ini_read_real(_slot, "Spell0", 0);
	global.controllSpells[1] = ini_read_real(_slot, "Spell1", 0);
	global.controllSpells[2] = ini_read_real(_slot, "Spell2", 0);
	
	global.currentPower = ini_read_real(_slot, "Power", 0);
	global.controllPowers[0] = ini_read_real(_slot, "Power0", 0);
	global.controllPowers[1] = ini_read_real(_slot, "Power1", 0);
	global.controllPowers[2] = ini_read_real(_slot, "Power2", 0);
	
	//INVENTORY AND KEYS SYSTEM
	global.key[1] = ini_read_real(_slot, "Keys1", 0);
	global.key[2] = ini_read_real(_slot, "Keys2", 0);
	global.key[3] = ini_read_real(_slot, "Keys3", 0);
	global.key[4] = ini_read_real(_slot, "Keys4", 0);
	global.key[5] = ini_read_real(_slot, "Keys5", 0);
	
	global.stateDialogue = ini_read_real(_slot, "Dialogue", 0);
	
	//show_debug_message(string(global.a_inv));
	show_debug_message("Vida Máxima: " + string(global.pMaxLife));
	show_debug_message("Aura Máxima: " + string(global.pMaxAura));
	show_debug_message("Dano Ataque: " + string(global.pAtk));
	show_debug_message("Dano Mágico: " + string(global.pDmgSpell));
	show_debug_message("Boss 1 Destruído: " + string(global.destroyed[1]));
	show_debug_message("Boss 2 Destruído: " + string(global.destroyed[2]));
	
	ini_close();
	room_goto(roomID);
}