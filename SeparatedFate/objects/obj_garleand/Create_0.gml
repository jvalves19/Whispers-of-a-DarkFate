/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

max_life = 1000;
life = max_life;

healthbar_width = 1630;
healthbar_height = 40;
healthbar_x = (400/2) - (healthbar_width/26);
healthbar_y = ystart + 950;

max_hSpd = 4;
max_vSpd = 2;

timer_state = 0;

dist_player = 100;
damage = noone;
atk = 25;
canAttack = true;

audio_stop_sound(msc_bossBattle);
audio_play_sound(msc_bossBattle, 1000, true);
audio_sound_gain(msc_bossBattle, 1, 0);

//Function Attack - Substate
state_atk = irandom(2);

global.bossName[1] = object_index;
global.destroyed[1] = global.destroyed[1];

if(!global.destroyed[1]){
	global.bossBattle = true;
}