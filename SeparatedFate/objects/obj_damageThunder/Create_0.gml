/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_spThunder;
	
damage = 0;
father = noone;
image_alpha = 1;

//Create a checklist to see if I can hit the target
apply_damage = ds_list_create();

audio_play_sound(snd_sword, 1, false);