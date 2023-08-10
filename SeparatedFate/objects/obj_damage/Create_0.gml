/// @description Insert description here
// You can write your code in this editor

damage = 0;
father = noone;
image_alpha = 0;

//Create a checklist to see if I can hit the target
apply_damage = ds_list_create();

destroy = true;

audio_play_sound(snd_sword, 10, false);