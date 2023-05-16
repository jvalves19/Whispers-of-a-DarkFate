/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

bossBattle = false;
battleFase = 1;

charSprite(spr_samIdle, spr_samWalk);

max_life = 500;
life = max_life;
invincible = false;

healthbar_width = 1630;
healthbar_height = 40;
healthbar_x = (400/2) - (healthbar_width/26);
healthbar_y = ystart + 950;

max_hSpd = 4;
max_vSpd = 2;
dash_Spd = 4;

timer_state = 0;

dist_player = 100;
damage = noone;
atk = 25;
canAttack = true;

//Function Attack - Substate
state_atk = irandom(2);