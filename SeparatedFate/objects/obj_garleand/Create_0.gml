/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

max_life = 1000;
life = max_life;

max_hSpd = 4;
max_vSpd = 2;

timer_state = 0;

dist_player = 100;
damage = noone;
atk = 25;
canAttack = true;

//Function Attack - Substate
state_atk = irandom(2);