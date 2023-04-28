global.spd_mult = 1;
game_over = false;
value = 0;

global.dialogo = false;
global.stateDialogue = 1;

global.actRoom = noone;
global.playerID = noone;
global.owPlayerID = noone;
global.actPlayer = global.playerID;

global.playerXP = 1;
global.playerLevel = 1;
global.playerMaxLevel = 500;
global.playerMaxXP = 500;
global.playerGold = 100;

#region INVENTORY SYSTEM
enum e_item_stats{
	name,
	cost,
	maxStack,
}
enum e_item_type{
	red =0 ,
	blue = 1,
	green = 2,
	yellow = 3
}
enum e_inventory{
	type,
	quantity,
}
global.a_items[e_item_type.red, e_item_stats.name] = "RED POTION";
global.a_items[e_item_type.red, e_item_stats.maxStack] = 10;

global.a_items[e_item_type.blue, e_item_stats.name] = "BLUE POTION";
global.a_items[e_item_type.blue, e_item_stats.maxStack] = 10;

global.a_items[e_item_type.green, e_item_stats.name] = "GREEN POTION";
global.a_items[e_item_type.green, e_item_stats.maxStack] = 5;

global.a_items[e_item_type.yellow, e_item_stats.name] = "YELLOW POTION";
global.a_items[e_item_type.yellow, e_item_stats.maxStack] = 5;

global.itemType = -1;
global.itemQtd = 0; 

maxInvSlots = 4;
for(var inv = 0; inv < maxInvSlots; inv++){
	global.a_inv[inv, e_inventory.type] = global.itemType;
	global.a_inv[inv, e_inventory.quantity] = global.itemQtd;
}
showInventory = true;
selectedItem = 0;
#endregion

//PLAYER VARIABLES
global.pMaxLife = 100;
global.pMaxAura = 150;
global.pAtk = 20 * global.playerLevel;

global.dmgFire = 20 * global.playerLevel;
global.dmgHoly = 20 * global.playerLevel;
global.dmgThunder = 20 * global.playerLevel;
global.pDmgSpell = noone;

//BLADE VARIABLES
global.currentBlade = 0;
/*
global.controllBlades = [
	false,	//Mana Blade
	false,	//Fire Blade
	false,	//Bloodstained Blade
]
*/

//ULTIMATE VARIABLES
global.currentPower = -1;
global.controllPowers = [
	false,	//Fast Sword
	false,	//Holy Explosion
	false,	//Thunder Exectution
]

//SPELL VARIABLES
global.currentSpell = -1;
global.controllSpells = [
	false,	//electric
	false,	//fire
	false	//holy
]

#region KEY SYSTEM
for(global.numKey = 0; global.numKey<10; global.numKey++){
	global.key[global.numKey] = false;	
}
global.numKey = 0;
#endregion

#region BOSSESS
//ALL BOSSES GLOBAL VARIABLES
global.bossBattle = false;
bossDead = false;

for(i=1; i<=10 ; i++){
	global.bossName[i] = noone;
	global.destroyed[i] = false;
}
#endregion