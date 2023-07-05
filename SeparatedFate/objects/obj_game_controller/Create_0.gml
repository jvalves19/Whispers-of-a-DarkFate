global.spd_mult = 1;
game_over = false;
value = 0;

global.scene_info = -1;
global.sceneNumber = -1;

global.actRoom = noone;
global.playerID = noone;
global.owPlayerID = noone;
global.actPlayer = global.playerID;

global.playerXP = 1;
global.playerLevel = 1;
global.playerMaxLevel = 500;
global.playerMaxXP = 500;
global.playerGold = 100;

//PLAYER VARIABLES
global.pMaxLife = 100;
global.pMaxAura = 50;
global.auraUltimate = 0;
global.auraSpell = 0;
global.pAtk = 20 * global.playerLevel;

global.dmgFire = 20 * global.playerLevel;
global.dmgHoly = 20 * global.playerLevel;
global.dmgThunder = 20 * global.playerLevel;
global.pDmgSpell = noone;

#region DIALOGUES
global.dialogo = false;
global.bardoDialogue = 1;
global.blackSmithDialogue = 1;
#endregion

#region INVENTORY SYSTEM
global.lifePotionQtd = 0;
global.auraPotionQtd = 0;
global.damagePotionQtd = 0;
global.spellPotionQtd = 0;

global.currentItem = 0;
global.controllItems = [
	true,	//Life Potion
	false,	//Aura Potion
	false,	//Damage Potion
	false,  //Spell Potion
	false
]
#endregion

#region BLADES SYSTEM
global.currentBlade = -1;
global.controllBlades = [
	false,	//Mana Blade
	false,	//Fire Blade
	false,	//Bloodstained Blade
]
#endregion

#region ULTIMATE SYSTEM
global.currentUltimate = -1;
global.controllUltimate = [
	false,	//Fast Sword
	false,	//Holy Explosion
	false,	
]
#endregion

#region SPELL SYSTEM
global.currentSpell = -1;
global.controllSpells = [
	false,	//electric
	false,	//fire
	false,	//holy
	false,
]
#endregion

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