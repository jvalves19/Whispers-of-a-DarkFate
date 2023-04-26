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
global.playerGold = 100

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
global.power = noone;
global.currentPower = -1;
global.controllPowers = [
false,	//Fast Sword
false,	//Holy Explosion
false,	//Thunder Exectution
]

//SPELL VARIABLES
global.spell = noone;
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