global.spd_mult = 1;
game_over = false;
value = 0;

global.dialogo = false;
global.stateDialogue = 1;

global.actRoom = noone;
global.playerID = noone;
global.owPlayerID = noone;
global.actPlayer = global.playerID;

//PLAYER VARIABLES
global.pMaxLife = 100;
global.pMaxAura = 150;
global.pAtk = 20;

global.power = noone;
global.currentPower = -1;
global.controllPowers = [
false,	//Fast Sword
false,	//Holy Explosion
false,	//Thunder Exectution
]

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

for(i=1; i<=3; i++){
	global.bossName[i] = noone;
	global.destroyed[i] = false;
}

#endregion