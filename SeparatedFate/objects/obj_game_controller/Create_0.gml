global.spd_mult = 1;

game_over = false;

value = 0;

global.actRoom = noone;


//PLAYER VARIABLES
//global.pMaxLife = 100;
global.controllPowers = [
false,	//Fast Sword
false	//Heal
]


global.playerID = noone;
global.owPlayerID = noone;
global.actPlayer = global.playerID;

#region BOSSESS
//ALL BOSSES GLOBAL VARIABLES
global.bossBattle = false;

bossDead = false;

for(i=1; i<=2; i++){
	global.bossName[i] = noone;
	global.destroyed[i] = false;
}

#endregion