/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;
damage = 0;
father = noone;

//Create a checklist to see if I can hit the target
apply_damage = ds_list_create();

destroy = true;

audio_play_sound(snd_sword, 10, false);